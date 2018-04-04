Crowdsale contract in LLL


var bin = "341561000757fe5b336000556020610123600039600051600355602060206101230160203960205160045560eb806100386000396000f30060e060020a6000350460605263a39953b26060511415604e576000543314151560285760006000fd5b6000600254111560385760006000fd5b6002546000526001600051016000526000516002555b632d3fb0d5606051141560675760025460005260206000f35b6338cc48316060511415607e573360005260206000f35b638da5cb5b606051141560975760005460005260206000f35b634783c35b606051141560b05760035460005260206000f35b63d5abeb01606051141560c95760045460005260206000f35b600160025414151560da5760006000fd5b600060006000600034600354615208f1"


[{"constant":true,"inputs":[],"name":"getCrowdsaleState","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getAddress","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"multisig","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"startCrowdsale","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"maxSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"multisig","type":"address"},{"name":"maxSupply","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]

var Structure = web3.eth.contract(abi)

var contract = Structure.new({data: bin, from: web3.eth.coinbase, gas: 100000})

