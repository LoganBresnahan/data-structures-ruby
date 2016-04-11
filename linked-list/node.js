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

Node.prototype.insertAfter = function(nodeToInsert) {
  nodeToInsert.pointer = this.pointer;
  this.pointer = nodeToInsert;
}

var first_node = new Node("one");
var second_node = new Node("two");
var inserted_node = new Node("inserted");
first_node.new(second_node);
first_node.insertAfter(inserted_node);
console.log(first_node.pointer);
console.log(inserted_node.pointer);
console.log(second_node.pointer);
