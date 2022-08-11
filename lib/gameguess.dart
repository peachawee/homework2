import 'dart:io';
import 'dart:math';

import 'game.dart';

void main(){
  var game = Game();
  var result = 0;
  var count = 0;
  stdout.write('Select level? "expert" "hard" "normal" "easy" : ');
  var level = stdin.readLineSync();
  game.checkLv( lv: level );
  if( level == 'expert'){
    stdout.write('Please guess the number between 1 and 10000, inclusive : ');
  }else if( level == 'hard'){
    stdout.write('Please guess the number between 1 and 1000, inclusive : ');
  }else if( level == 'normal'){
    stdout.write('Please guess the number between 1 and 100, inclusive : ');
  }else if( level == 'easy') {
    stdout.write('Please guess the number between 1 and 10, inclusive : ');
  }

  while( result != 3 ) {
    count++;
    /*var*/String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess==null){
      print("Please type number only.");
      continue;
    }
    if( level == 'expert' ) {
      if (guess > 10000 || guess < 1) {
        print("Please guess the number between 1 and 10000 only.");
        continue;
      }
    }else if( level == 'hard'){
      if (guess > 1000 || guess < 1) {
        print("Please guess the number between 1 and 1000 only.");
        continue;
      }
    }else if( level == 'normal'){
      if (guess > 100 || guess < 1) {
        print("Please guess the number between 1 and 100 only.");
        continue;
      }
    }else if( level == 'easy') {
      if (guess > 10 || guess < 1) {
        print("Please guess the number between 1 and 10 only.");
        continue;
      }
    }
    result = game.doGuess(guess);
  }

  while(true) {
    stdout.write('You want to play again? (y|n) : ');
    var want = stdin.readLineSync();
    int w = game.checkWant(want);
    if ( w == 2 ) {
      print('please enter y or n only!');
      continue;
    }
    if ( w == 1 ) {
      doAgian();
      break;
    } else if (w == 0) {
      print('End game!');
      break;
    }
  }


}

void doAgian() {
  var game = Game();
  var result = 0;
  var count = 0;
  stdout.write('Select level? "expert" "hard" "normal" "easy" : ');
  var level = stdin.readLineSync();
  game.checkLv( lv: level );
  if( level == 'expert'){
    stdout.write('Please guess the number between 1 and 10000, inclusive : ');
  }else if( level == 'hard'){
    stdout.write('Please guess the number between 1 and 1000, inclusive : ');
  }else if( level == 'normal'){
    stdout.write('Please guess the number between 1 and 100, inclusive : ');
  }else if( level == 'easy') {
    stdout.write('Please guess the number between 1 and 10, inclusive : ');
  }

  while( result != 3 ) {
    count++;
    /*var*/String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess==null){
      print("Please type number only.");
      continue;
    }
    if( level == 'expert' ) {
      if (guess > 10000 || guess < 1) {
        print("Please guess the number between 1 and 10000 only.");
        continue;
      }
    }else if( level == 'hard'){
      if (guess > 1000 || guess < 1) {
        print("Please guess the number between 1 and 1000 only.");
        continue;
      }
    }else if( level == 'normal'){
      if (guess > 100 || guess < 1) {
        print("Please guess the number between 1 and 100 only.");
        continue;
      }
    }else if( level == 'easy') {
      if (guess > 10 || guess < 1) {
        print("Please guess the number between 1 and 10 only.");
        continue;
      }
    }
    result = game.doGuess(guess);
  }

  while(true) {
    stdout.write('You want to play again? (y|n) : ');
    var want = stdin.readLineSync();
    int w = game.checkWant(want);
    if ( w == 2 ) {
      print('please enter y or n only!');
      continue;
    }
    if ( w == 1 ) {
      doAgian();
      break;
    } else if (w == 0) {
      print('End game!');
      break;
    }
  }
}



/*int? myFunc() {
  return 0;
}*/


