function Node(element) {
  this.value = element;
  this.pointer = null;
  this.index = null;
  this.count = 0;
}

Node.prototype.new = function(element) {
  this.pointer = element;
  this.pointer.pointer = null;
}

var first_node = new Node("one");
var second_node = new Node("two");
first_node.new(second_node);
console.log(first_node.value);
console.log(first_node.pointer);
console.log(second_node.value);
console.log(second_node.pointer);
