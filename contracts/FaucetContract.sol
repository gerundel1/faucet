// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Faucet {


    address[] public funders;

    // this is a special function that will be called when you make a tx
    // that doesn't specify a function name to call

    // External means that this function can be called from outside of the contract
    // They can be called via contracts and other txs
    receive() external payable {}

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function getAllFunders() public view returns(address[] memory) {
        return funders;
    }

    function getFunderAtIndex(uint8 index) external view returns(address) {
        address[] memory _funders = getAllFunders(); 
        return _funders[index];
    }

    // pure, view - read-only, no gas fees
    // view - it indicates that the function will not alter the storage state in any way
    // pure means that this function can't be called from outside of the contract
    // pure - more strict, indicating that it won't even read the storage state

    // Transactions (can generate state changes and requires gas fees)
    // read-only call, no gas fees

    // to talk to the node on the network you can make JSON-RPC http calls
}

// Block info
// Nonce - a hash that when combined with the minHash proofs that
// the block has gone through proof of work

// const instance = await Faucet.deployed();
// instance.addFunds({from: accounts[0], value: "2"});