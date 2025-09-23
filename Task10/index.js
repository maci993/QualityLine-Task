let numbers = [
  5, 3, 12, 20, 28, 11, 4, 9, 33, 41, 50, 23, 99, 10, 18, 7, 1, 21, 45, 26,
];
console.log("Original array:", numbers);

for (let i = 0; i < numbers.length; i++) {
  //manual sorting
  for (let j = 0; j < numbers.length - i - 1; j++) {
    if (numbers[j] > numbers[j + 1]) {
      let temp = numbers[j];
      numbers[j] = numbers[j + 1];
      numbers[j + 1] = temp;
    }
  }
}
console.log("Sorted array:", numbers);
//output Sorted array: [
//1,  3,  4,  5,  7,  9, 10,
//11, 12, 18, 20, 21, 23, 26,
//28, 33, 41, 45, 50, 99
//]


class Sorter {
  constructor(array) {
    this.numbers = array;
  }
  sort() {
    for (let i = 0; i < this.numbers.length; i++) {
      for (let j = 0; j < this.numbers.length - i - 1; j++) {
        if (this.numbers[j] > this.numbers[j + 1]) {
          //switching the numbers
          let temp = this.numbers[j];
          this.numbers[j] = this.numbers[j + 1];
          this.numbers[j + 1] = temp;
        }
      }
    }
  }
  print() {
    console.log(this.numbers);
  }
}

let sorter = new Sorter(numbers);
sorter.sort();
console.log("Sorting Array with class:");
sorter.print();

//Output:[
//1,  3,  4,  5,  7,  9, 10,
//11, 12, 18, 20, 21, 23, 26,
//28, 33, 41, 45, 50, 99
//]