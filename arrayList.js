// defining an array list without using arrays, only js objects and class



class ArrayList {
  constructor() {
    this.length = 0;
    this.data = {};
  }
  
  push(value) {
    this.data[this.length] = value;
    this.length++;
  }
  
  pop() {
    return this.delete(this.length - 1);
  }
  get(index) {
    return this.data[index];
  }
  delete(index) {
    var result = this.data[index];
    this._collapseTo(index);
    return result;
  }
  _collapseTo(index) {
    for (var i = index; i < this.length; i++) {
      this.data[i] = this.data[i + 1];
    }
    delete this.data[this.length - 1];
    this.length--;
  }
}