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
