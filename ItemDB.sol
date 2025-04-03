// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// declare new contract
contract ItemDB{
    // declare a struct 
    struct itemInfo{
        string itemName;
        string itemDesc;
        uint256 itemPrice; // this will get initialized to 0
    }

    //mapping the wallet addres to the struct
    mapping(address => itemInfo) public wallets; 

    // function that stores item details
    // the function is external, it can be called outside of the contract
    function storeItem(address _wallet, string memory _itemName, uint256 _itemPrice, string memory _itemDesc) external {
        wallets[_wallet].itemName = _itemName;
        wallets[_wallet].itemDesc = _itemDesc;
        wallets[_wallet].itemPrice = _itemPrice;
    }

    // function that update item details
    // updated info is based on the field 0: itemName or 1: itemDesc, or 2: itemPrice
    function updateItem (address _wallet, uint256 field, string memory updatedInfo) external {
        if (field == 0) {
            wallets[_wallet].itemName = updatedInfo;
        }
        else if (field == 1){
            wallets[_wallet].itemDesc = updatedInfo;
        }
        else if (field == 2 ){
            wallets[_wallet].itemPrice = strToUint(updatedInfo);
        }
    }

    // function that converts string to uint256
    function strToUint(string memory _str) private pure returns(uint256 res) {
        for (uint256 i = 0; i < bytes(_str).length; i++) {
            if ((uint8(bytes(_str)[i]) - 48) < 0 || (uint8(bytes(_str)[i]) - 48) > 9) {
                return (0);
            }
            res += (uint8(bytes(_str)[i]) - 48) * 10**(bytes(_str).length - i - 1);
        }
        return (res);
    }

    // function that deletes item info
    function deleteItem(address _wallet) external {
        delete wallets[_wallet]; // deleting the mapping
    }

}
