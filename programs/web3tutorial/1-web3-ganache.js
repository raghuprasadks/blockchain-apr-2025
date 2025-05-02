import { Web3 } from 'web3';

// Connect to Ganache RPC endpoint
const web3 = new Web3('http://127.0.0.1:7545');

// Example: Get accounts from Ganache
web3.eth.getAccounts().then(accounts => {
    console.log("Ganache Accounts:", accounts);
});

// Example: Get the balance of the first account

web3.eth.getBalance('0x8E5906594791c10228cF1B03Bf485bc4C5a30C46').then(balance => {
    console.log("Balance:", balance);
});