pragma solidity ^0.4.15;

contract Crowdsale {
  address public owner;
  address public multisig;
  uint256 public maxSupply;
  uint256 public weiMultiplier;

  function Crowdsale(address multisig, uint256 maxSupply, uint256 weiMultiplier) {}

  function startCrowdsale() {}
  function getAddress() constant returns (address) {}
  function getCrowdsaleState() public view returns (uint256) {}
  function balanceOf(address) public view returns(uint256) {}
}
