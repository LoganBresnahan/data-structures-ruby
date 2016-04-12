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
  if(this.pointer === null) return;

  if(this.pointer.pointer){
    this.pointer = this.pointer.pointer;
  }else{
    this.pointer = null;
  };

}

Node.prototype.recursiveNodePointer = function(thisNode, nodeToFind) {
  if(thisNode.pointer == nodeToFind){ return thisNode; };
  thisNode = thisNode.pointer;
  recursiveNodePointer(thisNode, nodeToFind);
}

Node.prototype.recursiveNodeIndex = function(thisNode, index) {
  thisNode.index = this.count;
  if(thisNode.index == index){ return thisNode; };
  thisNode == thisNode.pointer;
  this.count += 1;
  recursiveNodeIndex(thisNode, index);
}

Node.prototype.recursiveNodeSize = function(thisNode){
  thisNode.index = this.count;
  if(thisNode.pointer === null){ return thisNode.index+1; };
  thisNode = thisNode.pointer;
  this.count += 1;
  recursiveNodeSize(thisNode);
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
