pragma solidity ^0.8.2;
// SPDX-License-Identifier: MIT

contract Token{

    mapping (address => uint) public balances;
    mapping (address => mapping(address => uint)) public allowance;
    uint public totalSupply = 10000 * 10 ** 18;
    string public name = "Must Coin";
    string public symbol = "MST";
    uint public decimals = 18;

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);


    constructor(){
        balances[msg.sender] = totalSupply;

    }

    // Fucntion to read balance
    function balanceOf(address owner) public view returns(uint){
        return balances[owner];
    }

    // Function to transfer a token, check balance of sender
    function transfer(address to, uint value) public returns(bool){
        require(balanceOf(msg.sender) >= value,'balance too low');
        balances[to] +=  value;
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, to, value);
        return true;
    } 

    // Fucntion for Transfer From
    function transferFrom(address from, address to, uint value) public returns(bool){
        require(balanceOf(from) >= value, 'balance too low');
        require(allowance[from][msg.sender] >= value, 'allowance too low');
        balances[to] +=value;
        balances[from] -= value;
        emit Transfer(from, to, value);
        return true;
    }

    // Fucntion for delegated transfers , one address has the access to play with tokens of a address
    function approve(address spender, uint value) public returns (bool){
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

}