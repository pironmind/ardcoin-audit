pragma solidity ^0.5.8;

import "./ERC20Mintable.sol";
import "./ERC20Burnable.sol";
import "./ERC20Metadata.sol";
import "./ERC20Detailed.sol";

/**
 @title ArdCoin - ERC20 Token Contract

 Developed by https://github.com/pironmind
 License: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/LICENSE
*/
contract ArdCoin is ERC20Burnable, ERC20Mintable, ERC20Metadata, ERC20Detailed  {

    /**
    * Constructor
    */
    constructor(string memory _name, string memory _symbol, uint256 _supply, uint8 _decimals)
    public
    ERC20Detailed(_name, _symbol,_decimals)
    {
        mint(owner(), _supply * 10**uint256(decimals()));
    }
}
