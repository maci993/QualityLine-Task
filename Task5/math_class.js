class math {
  // constructor function that runs when you create a new object from the class.
  constructor(a, b) {
    this.A = a;
    this.B = b;
  }

  // display multiplication table
  displayTable() {
    //iterates rows (1 through 10).
    for (let i = 1; i <= 10; i++) {
      let row = [];
      //adds each result to the array.
      for (let j = 1; j <= 10; j++) {
        row.push(i * j);
      }
      console.log(row.join(","));
    }
  }

  // return the sum of two numbers
  Sum(x, y) {
    return x + y;
  }

  //return the multiplication of two numbers
  Mul(x, y) {
    return x * y;
  }
}

// new class that extends math
class math_ext extends math {
  ver() {
    return "Ver 1.19";
  }
}

//  run examples
function main() {
  const obj = new math_ext(5, 3);
  console.log("Sum of 5 and 3:", obj.Sum(obj.A, obj.B));
  console.log("Multiplication of 5 and 3:", obj.Mul(obj.A, obj.B));
  console.log(obj.ver());
  console.log("Multiplication Table from 1 to 10:");

  obj.displayTable();
}

main();
