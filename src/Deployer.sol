//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

contract Deployer {
  function deploy(bytes calldata code, uint salt) public {
    bytes memory memCode = code;
    address outaddr;
    assembly {
        let data := add(0x20, memCode)
        let size := mload(memCode)    
        outaddr := create2(0, data, size, salt)
        if iszero(extcodesize(outaddr)) {
            revert(0,0)
        }
    }
  }

}
