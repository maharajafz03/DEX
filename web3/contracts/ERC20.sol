// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.24;

contract ERC20{

    string public Name;
    string public Symbol;
    address public owner;
    uint public totalSupply;

    event transfer(address indexed from, address indexed to, uint _value);
    
    mapping (address => uint) public balance;
    mapping (address => mapping(address => uint)) public balances;
  
    
    constructor(uint _amount, string memory _name, string memory _symbol) {

        owner = msg.sender;
        Name  = _name;
        Symbol= _symbol;
        totalSupply = _amount;
        balance[msg.sender] = totalSupply;
    }

    // modifier onlyowner() {
    //     require(owner == msg.sender);   
    // }

    function mint(uint _amount) public {
     require(msg.sender == owner, "you not a owner");
     balance[msg.sender] += _amount;
    }

    function transfer(address _to, uint _value) public payable{
      require(_to != address(0), "invalid address"); 
      require(balance[msg.sender] >= _value, "insufficient fund");
      
      balance[msg.sender] - _value;
      balance[_to] += _value;
      payable;                    // pending transfer function line...
      emit transfer(msg.sender, _to, _value);
    }
      
}

 