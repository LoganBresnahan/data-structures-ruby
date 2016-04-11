function LinkedList() {
  this.frontNode = null;
  this.backNode = null;
}

LinkedList.prototype.insertFirst = function(nodeObject){
  if(this.frontNode != null){ nodeObject.pointer = this.frontNode; };
  this.frontNode = nodeObject;
  if(this.backNode === null){ this.backNode = this.frontNode; };
}

LinkedList.prototype.removeFirst = function(){
  if(this.frontNode === null){ return null; };
  if(this.frontNode.pointer != null){
    this.frontNode = this.frontNode.pointer;
  }else{
    this.frontNode = null;
  };
}

LinkedList.prototype.insertLast = function(nodeObject){
  if(this.frontNode === null){
    this.frontNode = nodeObject;
    this.backNode = this.frontNode;
  }else{
    this.backNode.pointer = nodeObject;
    this.backNode = nodeObject;
  };
}

LinkedList.prototype.removeLast = function(){
  if(this.frontNode.pointer === null){ return this.frontNode = null; };
  this.backNode = this.frontNode.recursiveNodePointer(this.frontNode, nodeToFind);
  this.backNode = null;
  return this.backNode;
}

LinkedList.prototype.get = function(index){
  return this.frontNode.recursiveNodeIndex(this.frontNode, index);
}

LinkedList.prototype.set = function(index, element){
  var node = this.frontNode.recursiveNodeIndex(this.frontNode, index);
  node.value = element;
}

LinkedList.prototype.insert = function(index, element){
  var behindNode = this.get(index-1);
  var infrontNode = this.get(index);
  var insertedNode = Node.new(element);
  insertedNode.pointer = infrontNode;
  behindNode.pointer = insertedNode;
}

LinkedList.prototype.size = function(){
  this.frontNode.recursiveNodeSize(this.frontNode);
}
