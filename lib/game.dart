import 'dart:math';

class Game  {
  int answer = 0; // instance field
  var r;
  Game() {
    r = Random();
  }

  void checkLv({String? lv}) {
    if( lv == 'expert'){
      answer = r.nextInt(10000)+1;
    }else if( lv == 'hard'){
      answer = r.nextInt(1000)+1;
    }else if( lv == 'normal'){
      answer = r.nextInt(100)+1;
    }else if( lv == 'easy') {
      answer = r.nextInt(10) + 1;
    }
    //print(' !for test! คำตอบคือ $answer');  //close comment for see answer
  }

  int doGuess(int num) {
    if ( num > answer ) {
      print('$num is too high!');
      return 1;
    } else if (num < answer ) {
      print('$num is too low!');
      return 2;
    } else {
      print('$num is correct!!!');
      print("Your won 'o'");
      return 3;
    }
  }

  int checkWant(String? want) {
    if( want == 'y' ){
      return 1;
    } else if( want == 'n' ){
      return 0;
    } else {
      return 2;
    }
  }



}