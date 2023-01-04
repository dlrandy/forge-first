// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Number.sol";

contract NumberTest is Test {
    Number public number;

    function setUp() public {
        number = new Number(10);
    }

    function testIncrement() public {
        uint contractNum = number.getNum();
        number.increment();
        assertEq(number.getNum(), 1 + contractNum);
    }

    function testDecrement(uint num) public{
        vm.assume(num < number.getNum());
        uint contractNum = number.getNum();
        number.decrement(num);
        assertEq(contractNum - num, number.getNum());
        
    }
    // anti-pattern
    function testFailDecrement(uint num) public{
        vm.assume(num > number.getNum());
        number.decrement(num);  
    }
    //forge test -vvvv --match-test testCannotDecrement
    function testCannotDecrement(uint num) public{
        vm.assume(num > number.getNum());
        vm.expectRevert(stdError.arithmeticError);
        number.decrement(num);  
    }

}
