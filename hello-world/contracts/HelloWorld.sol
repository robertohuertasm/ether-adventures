pragma solidity ^0.4.4;

contract HelloWorld {

  string greeting;
  
  function sayHello() public returns (string) {
    return ("Hello World");
  }
  
  function Hello() public returns (string) {
    greeting = "Hello World!";
    return greeting;
  }

}
