// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/*
Solidity 0.8
* safe math
* custom errors
* function outside contract
* import {symbol as alias, symbol2} from "filename*
* Salted contract creations / create2
*/

// safe math
contract SafeMath {
    // i. ❌
    function testUnderflow() public pure returns (uint256) {
        uint256 x = 0;
        x--;
        return x;
    }

    // ii. ✅
    function testUncheckedUnderflow() public pure returns (uint256) {
        uint256 x = 0;
        unchecked {
            x--;
        }
        return x;
    }
}

