function validateMood(){
	var x=document.forms["moods"]["curMood"].value;
	if (x==null || x==""){
		alert("Surely you feel something!");
		return false;
	}
}