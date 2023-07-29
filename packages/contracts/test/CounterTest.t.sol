// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "forge-std/Test.sol";
import {MudTest} from "@latticexyz/store/src/MudTest.sol";
import {getKeysWithValue} from "@latticexyz/world/src/modules/keyswithvalue/getKeysWithValue.sol";

import {IWorld} from "../src/codegen/world/IWorld.sol";
import {Counter, CounterTableId} from "../src/codegen/Tables.sol";

contract CounterTest is MudTest {
    IWorld public world;

    function setUp() public override {
        super.setUp();
        world = IWorld(worldAddress);
    }

    function testSet() public {
        world.increment();
    }

    function testSet2() public {
        world.increment(2);
    }

    function testSet3() public {
        world.increment(3);
    }

    function testSet4() public {
        world.increment(4);
    }

    function testGet() public {
        world.getCounter();
    }

    function testGet2() public {
        world.getCounter(2);
    }

    function testGet3() public {
        world.getCounter(3);
    }

    function testGet4() public {
        world.getCounter(4);
    }
}
