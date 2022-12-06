#!/bin/bash
echo -e "\n~~ Number Guessing Game ~~"

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

USERNAME_RESULT=$($PSQL "SELECT username FROM user_info WHERE username='$USERNAME'")

if [[ -z $USERNAME_RESULT ]]
then
  NEW_USER_ID=$($PSQL "SELECT COUNT(user_id) FROM user_info")

  if [[ -z $NEW_USER_ID ]]
  then
    NEW_USER_ID = 7
  else
    ((NEW_USER_ID++))
  fi

  INSERT_USERNAME=$($PSQL "INSERT INTO user_info (user_id, username) values ($NEW_USER_ID, '$USERNAME')")    # Welcome the new user
  
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    
  USER_ID=$($PSQL "SELECT user_id FROM user_info WHERE username='$USERNAME'")
  
else
  USER_ID=$($PSQL "SELECT user_id FROM user_info WHERE username='$USERNAME'")

  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM game_info WHERE user_id=$USER_ID")

  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM game_info WHERE user_id=$USER_ID")

  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$[RANDOM%1000+1]
INSERT_NEW_GAME=$($PSQL "INSERT INTO game_info (user_id, secret_number) values ('$USER_ID', $SECRET_NUMBER)")

GAME_ID=$($PSQL "SELECT MAX(game_id) FROM game_info WHERE user_id=$USER_ID")

GUESS_COUNT=0

echo -e "\nGuess the secret number between 1 and 1000:"
read USER_GUESS

((GUESS_COUNT++))

USER_GUESS_RESULT=$($PSQL "SELECT secret_number FROM game_info WHERE game_id=$GAME_ID AND user_id=$USER_ID AND secret_number=$USER_GUESS")

if [[ -z $USER_GUESS_RESULT ]]
then
  until [[ $USER_GUESS == $SECRET_NUMBER ]]
  do
    if [[ ! $USER_GUESS =~ ^[0-9]+$ ]] 
    then
      echo -e "\nThat is not an integer, guess again:"
      read USER_GUESS

      ((GUESS_COUNT++))  

    elif [[ $USER_GUESS < $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read USER_GUESS

      ((GUESS_COUNT++))
     
    else
      if [[ $USER_GUESS > $SECRET_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
        read USER_GUESS

        ((GUESS_COUNT++))
                
      fi
    fi          
  done
fi

if [[ $USER_GUESS == $SECRET_NUMBER ]]
then
  UPDATE_GUESSES=$($PSQL "UPDATE game_info set number_of_guesses=$GUESS_COUNT WHERE game_id=$GAME_ID AND user_id=$USER_ID")

  echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
fi    
