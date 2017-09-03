LLL Stuff
===

#### Helpful stuff I've found about LLL Development

First you'll need to download install solc and lllc (solidity and lll compilers)

[Building and Installing Ethereum Compilers](https://media.consensys.net/installing-ethereum-compilers-61d701e78f6)


Would also be helpful to install geth and testrpc


Install all four globally 


[LLL Compiler Documentation](https://media.readthedocs.org/pdf/lll-docs/latest/lll-docs.pdf)

[Walking Through LLL Contract](https://medium.com/@b.p.edgington/153f2cbe506b)

[An Introduction to LLL for Ethereum Smart Contract Development](https://media.consensys.net/an-introduction-to-lll-for-ethereum-smart-contract-development-e26e38ea6c23)

### Developing

TBD

### Deploying

Once you have your contract ready compile your contract

```
cd consensys contracts
llc Structure.lll
```

This will output bytcode
`3415600657fe5b6020604d600039600051600055602d8060206000396000f30060e060020a600035046020526332cafedd6020511415602b573415601f57fe5b60005460005260206000f35bfe`

In order to get abi / function hashes create an interface in solidity then go into that folder

```
cd ../interface
solc --hashes Structure.sol
```

Will output 

```
======= Structure.sol:Structure =======
Function signatures: 
32cafedd: getConstructorParameter()
```

That is where the function is stored in memory

Put that in contract

Then generate ABI to communicate with the contract

```
solc --abi Structure.sol
```

Will Output 

```
Contract JSON ABI 
[{"constant":true,"inputs":[],"name":"getConstructorParameter","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"param","type":"bytes32"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]
```

Then run test rpc and attach to geth in another terminal and deploy contracts

```
testrpc
```

```
geth attach http://localhost:8545
var bin = '3415600657fe5b6020604d600039600051600055602d8060206000396000f30060e060020a600035046020526332cafedd6020511415602b573415601f57fe5b60005460005260206000f35bfe'
var abi = [{"constant":true,"inputs":[],"name":"getConstructorParameter","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"param","type":"bytes32"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]
var Structure = web3.eth.contract(abi)
var contract = Structure.new("test", {data: bin, from: web3.eth.coinbase, gas: 100000})
contract.getConstructorParameter()
```

Well played