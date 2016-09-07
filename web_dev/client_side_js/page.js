

function styling(){
	var p = document.getElementsByTagName("p");
	p[0].style.color = "red";
	var deletephoto = document.getElementById("pic");
	deletephoto.remove();
	var text = document.createTextNode("---> Adding text from js"); 
	var div = document.getElementsByTagName("H1"); 
	div[0].appendChild(text);
	anotherButton()
}


function anotherButton(){
	var secondButton = document.createElement("button"); 
	var secondButtonText = document.createTextNode("Adding button from js, click to find out what happens");
	secondButton.appendChild(secondButtonText);
	document.body.appendChild(secondButton); 
	secondButton.style.fontSize = "xx-large";
	secondButton.style.color = "green";
	secondButton.addEventListener("click", border)

}


function border(){
	document.body.style.border = "5px solid red"
}



var button = document.getElementById("changecolor")
button.addEventListener("click", styling)



