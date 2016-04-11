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

Node.prototype.removeAfter = function() {
  if(this.pointer === null){
    return;
  };

  if(this.pointer.pointer){
    this.pointer = this.pointer.pointer;
  }else{
    this.pointer = null;
  };

}

var firstNode = new Node("one");
var secondNode = new Node("two");
var insertedNode = new Node("inserted");
firstNode.new(secondNode);
firstNode.insertAfter(insertedNode);
firstNode.removeAfter();
console.log(firstNode.pointer);
// console.log(insertedNode.pointer);
console.log(secondNode.pointer);
