
function findLongestString(arr) {
	var longest=arr[0].length
	for (var i=1;i<arr.length;i++){
		if (arr[i].length>longest) {
			longest=arr[i];
		};
	};

	return longest

};

function makeWord(number)
{
    var word = "";
    var letters = "abcdefghijklmnopqrstuvwxyz";

    for( var i=0; i < number; i++ )
        word += letters.charAt(Math.floor(Math.random() * letters.length));

    return word
};
var arr=[];
var num=Math.floor((Math.random()*24)+1);
for (var i=0;i<10;i++){
	var num=Math.floor((Math.random()*24));
	arr.push(makeWord(num));
	console.log(arr[i]);
};
console.log("\n");
console.log(findLongestString(arr));



function Person(name,age) {
	this.name= name;
	this.age= age;
};

var Susan = new Person("susan",22);
var Bob = new Person("Bob", 22);

function check(person1,person2){
	if (person1.name === person2.name)
		return true
	else if (person1.age === person2.age)
		return true
	else 
		return false;

};

console.log(check(Susan,Bob));


