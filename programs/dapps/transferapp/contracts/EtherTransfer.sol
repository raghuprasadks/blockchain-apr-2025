// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
contract EtherTransfer {
    // Event to log the transfer
    event Transfer(address indexed from, address indexed to, uint256 amount);

    // Function to transfer Ether
    function transferEther(address payable _to) public payable {
        require(msg.value > 0, "Amount must be greater than zero");
        require(_to != address(0), "Invalid recipient address");

        // Transfer Ether
        _to.transfer(msg.value);

        // Emit the transfer event
        emit Transfer(msg.sender, _to, msg.value);
    }

    // Fallback function to accept Ether
    receive() external payable {}
}