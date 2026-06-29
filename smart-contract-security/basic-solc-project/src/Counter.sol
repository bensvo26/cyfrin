// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

        //               Is calldata empty (msg.data)?
        //                     /       \
        //                     Yes         No
        //                     /             \
        //     Does receive() exist?     Does a matching function exist?
        //         /       \                      /         \
        //         Yes         No                 Yes           No
        //         /             \                /               \
        // receive()     Does fallback     Call function    Does fallback
        //                 be payable?                          exist?
        //                 /         \                          /     \
        //             Yes           No                     Yes       No
        //             /               \                    /           \
        //         fallback()         Revert            fallback()     Revert

    fallback() external payable {

    }

    receive() external payable {

    }
    
}


