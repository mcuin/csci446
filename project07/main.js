var guessesLeft = 10;
var number = Math.round(Math.random()*(99)+1);
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

function guessCall() {
  var guess = document.forms.guessTheNumber.guess.value;
  guessesLeft--;
  if (guess == number) {
    alert("You have guessed the correct answer!");
	var name = prompt("Please enter your name or nickname for the high scores.");
	$('div#highScores').empty();
	highScores.push([guessesLeft, name]);
	var con = confirm("Would you like to play again?");
	if (con == true) {
	  playAgain();
	} else {
	  $('#guessTheNumber').fadeOut('slow');
	}
  alert('You may now leave.');
  }
  if (guess > number) {
    alert("Your guess is too high!");
  }
  if (guess < number) {
    alert("Your guess is too low!");
  }
  if (guessesLeft == 0) {
    alert("You have no more guesses left.")
	var con = confirm("Would you like to play again?");
	if (con == true) {
	  playAgain();
	} else {
	  $('#guessTheNumber').fadeOut('slow');
	}
  alert('You have taken your last guess. Now sit and wait for your doom.');
  }
  updateScore(guessesLeft);
}	

function playAgain() {
  guessesLeft = 10;
  number = Math.round(Math.random()*(99)+1);
}

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}