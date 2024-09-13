// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Test {
    function test(uint testNumber) external pure returns (uint data) {
        assembly {
            mstore(0x40, 0x90)
        }

        uint8[3] memory items = [1, 2, 3];

        assembly {
            data := mload (add(0x90, 0x20))
        }

        return testNumber;
    }

    function test2() external pure returns (uint data) {

        assembly {
            let fmp := mload(0x40)
            mstore(add(fmp, 0x20), 0x68656C6C6F)
            data := mload(add(fmp, 0x00))
        }
    }
}