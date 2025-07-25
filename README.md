# Anti-Counterfeit Luxury Goods Smart Contract

This Solidity smart contract provides a simple anti-counterfeit system for luxury goods by allowing an authorized owner to register unique product codes and enabling anyone to verify their authenticity.

---

## Features

- **Owner-controlled product registration:** Only the contract owner can add authentic product codes.
- **Product authenticity verification:** Anyone can verify if a product code is authentic.
- **Event emission:** Emits an event each time a product is added for easy tracking.

---

## Contract Details

- **Contract Name:** `AntiCounterfeit`
- **Solidity Version:** `^0.8.19`
- **Key Functions:**
  - `addProduct(string calldata productCode)`: Adds a new authentic product code (owner-only).
  - `verifyProduct(string calldata productCode) external view returns (bool)`: Returns true if the product code is authentic.
  
---

## Usage

### Deploy

- Deploy the contract using Remix, Hardhat, Truffle, or your preferred Ethereum development environment.
- The deployer address becomes the `owner`.

### Add Product Codes

- Only the owner can call `addProduct` to register a new product code (e.g., serial number).

```solidity
addProduct("PRODUCT123");
bool isAuthentic = verifyProduct("PRODUCT123");
Contract Address: 0x6Cb613eE180226e53F49256b7CCE05c2227b0C6d
<img width="1257" height="266" alt="image" src="https://github.com/user-attachments/assets/d1b69fef-e557-4e76-b9f1-bfeab21b9751" />

