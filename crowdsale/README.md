Crowdsale contract in LLL


var bin = "3415600657fe5b606f806100146000396000f30060e060020a6000350460605263a39953b26060511415603e5760025460005260006002541115602e5760006000fd5b6001600051016000526000516002555b632d3fb0d5606051141560575760025460005260206000f35b6338cc48316060511415606e573360005260206000f35b"

var abi = [{"constant":true,"inputs":[],"name":"getCrowdsaleState","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"getAddress","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"startCrowdsale","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"}]

var Structure = web3.eth.contract(abi)

var contract = Structure.new({data: bin, from: web3.eth.coinbase, gas: 100000})

