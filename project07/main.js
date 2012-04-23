var guessesLeft = 10;
var number = 43;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

function guessCall() {
  var guess = document.forms.guessTheNumber.guess.value;
  if (guess == number) {
    alert("You have guessed the corret answer!");
  }
  if (guess > number) {
    alert("Your guess is too high!");
  }
  if (guess < number) {
    alert("Your guess is too low!");
  }
  guessesLeft--;
  if (guessesLeft == 0) {
    $("You have no more guesses left.")
  }	
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
  $('h2#score span#guessesLeft').append(score);
}