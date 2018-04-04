pragma solidity ^0.4.15;

contract Crowdsale {
  address public owner;
  address public multisig;
  uint256 public maxSupply;
 
  function Crowdsale(address multisig, uint256 maxSupply) {}
 
  function startCrowdsale() {}
  function getAddress() constant returns (address) {}
  function getCrowdsaleState() public view returns (uint256) {}

}
