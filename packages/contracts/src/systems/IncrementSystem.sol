// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {System} from "@latticexyz/world/src/System.sol";
import {Counter} from "../codegen/Tables.sol";

contract IncrementSystem is System {
    function increment() public returns (uint32) {
        uint32 counter = Counter.get();
        uint32 newValue = counter + 1;
        Counter.set(newValue);
        return newValue;
    }

    function increment(uint32 amount) public returns (uint32 newValue) {
        for (uint32 i = 0; i < amount; i++) {
            newValue = increment();
        }
    }

    function getCounter() public view returns (uint32) {
        return Counter.get();
    }

    function getCounter(uint32 amount) public view returns (uint32 value) {
        for (uint32 i = 0; i < amount; i++) {
            value = getCounter();
        }
    }
}
