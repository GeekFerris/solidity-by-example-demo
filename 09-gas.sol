// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
/*
 * You pay gas spent * gas price amount of ether
 *  - gas is a unit of computation
 *  - gas spent is the total amount of gas used in a transaction
 *  - gas price is how much ether you are willing to pay per gas
 * Transactions with higher gas price have higher priority to be included in a block. Unspent gas will be refunded.
 *
 * gas limit(max amount of gas you're willing to use for your transaction, set by you)
 * block gas limit(max amount of gas allowed in a block, set by network)
 */
contract Gas {
    uint public i = 0;

    // Using up all of the gas that you send causes your transaction to fail
    // State changes are undone.
    // Gas spent are not refunded
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}
