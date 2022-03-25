#Why do we need a Token?
Tokens can represent virtually anything in Ethereum:
reputation points in an online platform
skills of a character in a game
lottery tickets
financial assets like a share in a company
a fiat currency like USD
an ounce of gold
and more...

#What is ERC-20  (Etherium Request for Comments 20)
Proposed by Fabian VogelStellar in November 2015, its a token standard to implement a API for tokens in Smart Contracts

Functionalities 
transfer tokens from one account to another
get the current token balance of an account
get the total supply of the token available on the network
approve whether an amount of token from an account can be spent by a third-party account

Methods
function name() public view returns (string)
function symbol() public view returns (string)
function decimals() public view returns (uint8)
function totalSupply() public view returns (uint256)
function balanceOf(address _owner) public view returns (uint256 balance)
function transfer(address _to, uint256 _value) public returns (bool success)
function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
function approve(address _spender, uint256 _value) public returns (bool success)
function allowance(address _owner, address _spender) public view returns (uint256 remaining)

Events
event Transfer(address indexed _from, address indexed _to, uint256 _value)
event Approval(address indexed _owner, address indexed _spender, uint256 _value)


Metamask integration with BSC Testnet Faucet Tokens
https://academy.binance.com/en/articles/connecting-metamask-to-binance-smart-chain

Get testing BNB’s
https://testnet.binance.org/faucet-smart

Generate temporary address
https://vanity-eth.tk/


Same steps apply for ERC-20 Token on Ethereum Blockchain

Links
https://ethereum.org/en/developers/docs/standards/tokens/erc-20/

