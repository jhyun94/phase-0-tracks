/*
var colors = ["blue", "pink", "yellow","orange"];
var names = ["Ed", "Tim","Rose", "Sara"];

colors.push("purple");
names.push("Laura");

console.log(colors);
console.log(names);

var horses={};
var list=[];
if (colors.length == names.length) {
	for(var i=0;i<colors.length;i++){
		var key = names[i];
		horses[key]=colors[i];
	};
};
list.push(horses);
console.log(list);

*/

function car(body,wheels) {
	this.body=body;
	this.wheels=wheels;

	this.start= function(){
	console.log("*turns on car*");
};


};
var s2000 = new car("convertible", "4");
s2000.start();

