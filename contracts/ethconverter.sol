// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract EthConverter {
    // event to emit when eth is received
    event EthReceived(address sender, uint amount);

    // function enabling this contract receive eth
    receive() external payable {
        emit EthReceived(msg.sender, msg.value);
    }

    // function to obtain eth balance
    function getBalanceInWei() public view returns (uint) {
        return address(this).balance;
    }

    // function to convert wei to eth
    function weiToEth(uint _weiAmount) public pure returns (uint) {
        return _weiAmount / 1 ether;
    }

    // function to convert eth to wei
    function etherToWei(uint _etherAmount) public pure returns (uint) {
        return _etherAmount * 1 ether;
    }

    // function to convert eth to gwei
    function etherToGwei(uint _etherAmount) public pure returns (uint) {
        return _etherAmount * 1e9;
    }
}