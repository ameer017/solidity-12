// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data types - values and references
contract ValueTypes {
    bool public b = true;
    uint public u = 123; //supports only numbers greater than 0, no negative numbers but with ⬇️

    int public i = -123; //negative numbers can be used

    // to get the min and max value of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x23d90C9DAFB353E26F16D3E75ab7eD11f13b3753;

    bytes32 public b32 = 0x000000000000000000000000000000000000000000000000000000000000007b;

}