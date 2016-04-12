function FixedArray(capacity) {
  this.array = new Array(capacity);
  this.size = this.array.length;
}

FixedArray.prototype.get = function(index) {
  if(index > this.size-1 || index < 0) {
    throw new RangeError(`index must be between 0 and ${this.size-1}.`);
  }else {
    return this.array[index];
  }
}

FixedArray.prototype.set = function(index, element) {
  if(index > this.array.length-1 || index < 0) {
    throw new RangeError(`index must be between 0 and ${this.size-1}.`);
  }else {
    return this.array[index] = element;
  }
}

var arr = new FixedArray(4);
console.log(arr.array);
arr.set(0, 'this');
console.log(arr.array);
var value = arr.get(0);
console.log(value);
