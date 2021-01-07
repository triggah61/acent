pragma solidity ^0.5.0;

import "./ERC20Burnable.sol";

/**
 * @dev ACENT Token implementation.
 */
contract ACENTToken is  ERC20Burnable {
    using SafeMath for uint256;

    string public constant name = "ACENT";
    string public constant symbol = "ACE";
    uint8 public constant decimals = 18;

    uint256 internal constant INITIAL_SUPPLY = 2 * (10**9) * (10 ** uint256(decimals)); // 2 billions tokens

    /**
    * @dev Constructor that gives msg.sender all of existing tokens.
    */
    constructor() public {
        _totalSupply = INITIAL_SUPPLY;
        _balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
    }
}