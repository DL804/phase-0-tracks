//an array with long phrase, longest phrase and longer phrase it will return longest phrase, clue is .length will work in js
//compare the first element with the second and also check if it's larger than the third element, print first element if true
//otherwise, check if second element is larger than third element, print second element if true
//else default and print element three


function longest(array){
if (array[0].length > array[1].length && array[0] > array[2]){
	console.log(array[0]);
}else if (array[1].length > array[2].length){
	console.log(array[1]);
}else{
	console.log(array[2]);
}
}

var array = ["sho", "short", "shorter"]
longest(array)

