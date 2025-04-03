# ItemDB Smart Contract

This repository contains a Solidity smart contract named `ItemDB` that allows users to store, update, and delete item information associated with their Ethereum addresses.

## Overview

The `ItemDB` contract provides basic CRUD (Create, Read, Update, Delete) operations for managing item details. It utilizes a `mapping` to associate Ethereum addresses with `itemInfo` structs, which store the item's name, description, and price.

## Features

* **Store Item:** Users can store item details (name, description, and price) associated with their wallet address.
* **Update Item:** Users can update specific fields of their item information (name, description, or price) with input validation.
* **Delete Item:** Users can delete their item information.
* **String to Uint Conversion:** Includes a utility function to convert string representations of numbers to `uint256` with input validation.
* **Input Validation:** Added require statements to validate input parameters when updating an item.

## Contract Structure

* **`ItemDB` Contract:**
    * `itemInfo` Struct: Defines the structure for storing item details.
    * `wallets` Mapping: Maps Ethereum addresses to `itemInfo` structs.
    * `storeItem()` Function: Stores item details with input validation.
    * `updateItem()` Function: Updates item details with input validation.
    * `strToUint()` Function: Converts string to `uint256` with input validation.
    * `deleteItem()` Function: Deletes item details.

## Interacting with the Contract

You can interact with the deployed contract using:

* Remix IDE.
* Web3.js or Ethers.js in a frontend application.
* Truffle console or Hardhat console.
* Blockchain explorers, after deployment.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
