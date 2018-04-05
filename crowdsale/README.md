Crowdsale contract in LLL

### Geth Script
```
geth attach http://localhost:8545
loadScript(./deploy.js')
```

### Deploying Without Script
```
geth attach http://localhost:8545

var bin = "341561000757fe5b336000556103e83355602061019d6000396000516003556020602061019d016020396020516004556020604061019d0160403960405160015561014e8061004f6000396000f30060e060020a6000350460605263a39953b26060511415610051576000543314151561002a5760006000fd5b6000600254111561003b5760006000fd5b6002546000526001600051016000526000516002555b632d3fb0d5606051141561006b5760025460005260206000f35b6338cc48316060511415610083573360005260206000f35b638da5cb5b606051141561009d5760005460005260206000f35b634783c35b60605114156100b75760035460005260206000f35b639975faa260605114156100d15760015460005260206000f35b6370a0823160605114156100ec576004355460005260206000f35b63695f324960605114156101065760043560005260206000f35b63d5abeb0160605114156101205760045460005260206000f35b60016002541415156101325760006000fd5b600060006000600034600354615208f15034600154023354013355"

var abi = [{"constant":true,"inputs":[],"name":"getCrowdsaleState","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getAddress","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"multisig","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"getParam","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"weiMultiplier","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"startCrowdsale","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"maxSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"multisig","type":"address"},{"name":"maxSupply","type":"uint256"},{"name":"weiMultiplier","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]

var contract = web3.eth.contract(abi).new(web3.eth.accounts[0], 21000, 5, {data: bin, from: web3.eth.coinbase, gas: 1000000})
```
