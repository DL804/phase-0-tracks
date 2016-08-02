// assign the counter variable i to 0, when i is less than string length implement 
// using a loop by assigning the index # by string length minus 1, so we can index the string starting from the last letter. then add this to an empty string 


function reverse(str) {var string = ""; 
for (var i = str.length - 1; i > -1; i--) string += str[i]; return string
}



if ("word" === "word"){
	console.log(reverse("hello"))
}