function reverseString(string){
	string=string.split("").reverse().join("");
	return string

}

function statements() {
	var i = 0;
	if (i==0) {
		console.log("Hello World");
	}
	else {
		console.log("Goodbye World");
	}
}
console.log(reverseString("hello"));
statements();

