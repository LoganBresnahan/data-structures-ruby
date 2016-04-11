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
