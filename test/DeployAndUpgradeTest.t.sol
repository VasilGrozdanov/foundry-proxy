// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test, console2} from "forge-std/Test.sol";
import {DeployBox} from "script/DeployBox.s.sol";
import {UpgradeBox} from "script/UpgradeBox.s.sol";
import {BoxV1} from "src/BoxV1.sol";
import {BoxV2} from "src/BoxV2.sol";

contract DeployAndUpgradeTest is Test {
    DeployBox public deployer;
    UpgradeBox public upgrader;
    address public OWNER = makeAddr("owner");

    address public proxy;

    function setUp() public {
        deployer = new DeployBox();
        upgrader = new UpgradeBox();

        proxy = deployer.run();
    }

    function testProxyStartsAsV1() public {
        vm.expectRevert();
        BoxV2(proxy).setNumber(1);
    }

    function testUpgrades() public {
        BoxV2 box2 = new BoxV2();
        upgrader.upgradeBox(proxy, address(box2));
        uint256 expectedVersion = 2;
        uint256 expectedNumber = 42;
        BoxV2(proxy).setNumber(expectedNumber);
        assertEq(box2.version(), expectedVersion);
        assertEq(BoxV2(proxy).getNumber(), expectedNumber);
    }
}
