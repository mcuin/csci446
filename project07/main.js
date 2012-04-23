var guessesLeft = 10;
var number = 43;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

function guessCall() {
  var guess = document.forms.guessTheNumber.guess.value;
  guessesLeft--;
  if (guess == number) {
    alert("You have guessed the correct answer!");
  }
  if (guess > number) {
    alert("Your guess is too high!");
  }
  if (guess < number) {
    alert("Your guess is too low!");
  }
  if (guessesLeft == 0) {
    alert("You have no more guesses left.")
  }	
  updateScore(guessesLeft);
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