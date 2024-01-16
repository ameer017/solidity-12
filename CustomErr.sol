// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

// custom error -- to reduce gas consumption, the longer the stringified error; the higher the gas consumed
error Unauthorized(address caller);

contract VendingMachine {
    // i. ❌
    // address payable owner = payable(msg.sender);

    // function withdraw() public {
    //     if (msg.sender != owner) revert("error");

    //     owner.transfer(address(this).balance);
    // }

    // ii. ✅
    // error Unauthorized(address caller);
    // ⬆️ can also be declared outisde to be exported and used in another contract
    address payable owner = payable(msg.sender);

    // error Unauthorized(address caller);

    function withdrawAmt() public {
        if (msg.sender != owner) revert Unauthorized(msg.sender);
        owner.transfer(address(this).balance);
    }
}
