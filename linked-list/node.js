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

var node = new Node(1);
console.log(node)
var test = node.new(2);
console.log(test);
