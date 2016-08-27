//an array with long phrase, longest phrase and longer phrase it will return longest phrase, clue is .length will work in js
//create a longest array variable with an empty string
//loop through each element in the array and compare it to the longest array that we created 
//if the array phrase is longer than what is inside the new longest array variable, update longest array with that phrase


function longest(array){
	var long_phrase = ""
	for (var i = 0; i < array.length; i++){
		if (array[i].length > long_phrase.length)
			long_phrase = array[i]
	}
		return long_phrase

}

//var array = ["long phrase", "longest phrase", "longer phrase"]
//longest(array)




//Release 1
//function that takes in two objects and check if they share at least one keyvalue pair
//use Object.keys to find out the keys for each hash and set a variable to each object
//assign a new variable for value
//compare the keys if object 1 matches object 2 && also compare value for object 1 and 2, return true if both conditions matches
//otherwise return false

function match(object1, object2){
	var ob1keys = Object.keys(object1);
	var ob2keys = Object.keys(object2);
	
	var ob1value = object1[ob1keys];
	var ob2value = object2[ob2keys];

	if ((ob1keys == ob2keys) || (ob1value == ob2value)){
		return true;
		}else{return false
		}
}




joe = {"key4": "value4"}
bob = {"key3": "value4"}
match(joe, bob)

//Release 3
//function to take in integer for length and returns an array of strings with the same integer of words
//a minimum of 1 letter and max of 10 letters 
//create an empty array for random words variable
//create an empty string 
//while inputted number is less than 0, run loop until index is equal to inputted number
//random # of letter generator....set a number_of_letters variable to equal =>length of letters with 10 max and min 1 => Math.floor(Math.random() * (10 - 1) + 1)
//		loop using the number given by random letter generator which will set how many letters will be in string, loop until index = number from random letter
//		set a string_generator variable equal to random string generator =>String.fromCharCode(Math.floor(Math.random() * (122 - 97) + 97))
// 		add each random letter into the empty string...loop will stop when the random number of letters loop is 0
//  	when loop ends, push string into random_words empty array

function randomWord(num){
	var random_words = []
	for (var i = 0; i < num; i++){
		var number_of_letters = Math.floor(Math.random() * (10 - 1) + 1);
		    string = ""
		    for (var b = 0; b < number_of_letters; b++){
		    var string_generator = String.fromCharCode(Math.floor(Math.random() * (122 - 97) + 97)); 
		    	string += string_generator;
		    }
		    random_words.push(string)
	}
	return random_words
}

randomWord(4)

for (i = 0; i < 10; i++){
	console.log(randomWord(3))
	console.log(longest(randomWord(3)))
}


