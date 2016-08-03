array1 = ["red", "blue", "green", "yellow"]
array2 = ["Ed", "Bob", "Speedy", "Thunder"]

array1.push("purple")
array2.push("Ted")
//console.log(array1)
//console.log(array2)


//loop through each array
//update hash using key/value index
var hash = {}
for (var i = 0; i < array1.length; i++)
    hash[array1[i]] = array2[i];

 console.log(hash)

 function Car(brand, model, color, horsepower) {
	this.brand = brand;
	this.model = model;
	this.color = color; 
	this.hosepower = horsepower; 
	//function behavior
	this.sound = function() { console.log("Vrooooooooooom"); };
}

var car1 = new Car("Honda", "NSX", "White", "550Hp")
console.log(car1)
console.log("This is the sound it produces at full throttle:")
car1.sound()