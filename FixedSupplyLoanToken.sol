pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/StandardToken.sol";
/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract FixedSupplyLoanToken is StandardToken {

  //string public constant name = "TokenLoan token"; // solium-disable-line uppercase
  //string public constant symbol = "LOAN"; // solium-disable-line uppercase

  //string public constant name = "token for TokenLoan"; // solium-disable-line uppercase
  //string public constant symbol = "TL"; // solium-disable-line uppercase
  

  string public constant name = "token project"; // solium-disable-line uppercase
  string public constant symbol = "TP"; // solium-disable-line uppercase

  uint8 public constant decimals = 18; // solium-disable-line uppercase


  //初始发行数量
  uint256 public constant INITIAL_SUPPLY = 10000000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function FixedSupplyLoanToken() public {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
}