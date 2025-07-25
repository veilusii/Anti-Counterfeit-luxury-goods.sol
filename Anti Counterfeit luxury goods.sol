// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract AntiCounterfeit {
    address public owner;

    // Mapping productCode (string) to boolean (authentic or not)
    mapping(string => bool) private authenticProducts;

    // Event emitted when a product is added
    event ProductAdded(string indexed productCode);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Add a new authentic product code (e.g., serial number)
    function addProduct(string calldata productCode) external onlyOwner {
        require(!authenticProducts[productCode], "Product already added");
        authenticProducts[productCode] = true;

        emit ProductAdded(productCode);
    }

    // Verify if a product code is authentic
    function verifyProduct(string calldata productCode) external view returns (bool) {
        return authenticProducts[productCode];
    }
}
