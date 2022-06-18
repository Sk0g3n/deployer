// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

import "forge-std/Test.sol";
//import "ds-test/test.sol";
import "../src/Deployer.sol";


contract ContractTest is DSTest {

    Deployer deployer;
    bytes bytecode = hex"608060405234801561001057600080fd5b5060db8061001f6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c8063c0558a8214602d575b600080fd5b60336047565b604051603e9190605c565b60405180910390f35b600030905090565b6056816075565b82525050565b6000602082019050606f6000830184604f565b92915050565b6000607e826085565b9050919050565b600073ffffffffffffffffffffffffffffffffffffffff8216905091905056fea26469706673582212206f08a234ce3f82b0ab338f923f2af7c0ac1b0ff9b99c1a7fbb1cc12d37fecf3f64736f6c63430008010033";
    function setUp() public {
        deployer = new Deployer();
    }

    function testDeploymentWithCreate2() public{
        //bytes memory vpp = abi.encodePacked(bytecode);

        //deployer.stringToBytes32(vpp);
        deployer.deploy(bytecode, 1);   
    }
}
