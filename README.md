# Eth-Avax-intermediate-module-4(Degen Gaming Token Smart Contract)

This repository contains a Solidity smart contract for the Degen Gaming Token (DGT). The contract implements the ERC20 token standard and includes features for minting, transferring, redeeming, checking balances, and burning tokens.

## Contract Overview

- `DegenGamingToken.sol`: The main smart contract implementing the Degen Gaming Token.
- `OpenZeppelin`: The contract imports OpenZeppelin's ERC20 and Ownable contracts for standard token functionality and access control.

## Contract Details

- The contract deploys with an initial supply of 1,000,000 DGT tokens.
- The contract owner has the ability to mint new tokens and distribute them to players as rewards.
- Players can transfer their tokens to others.
- Players can redeem tokens for in-game items (custom logic needs to be implemented).
- Players can check their token balance at any time.
- Anyone can burn tokens that they own and no longer need.

## Functions

1. `constructor()`: Initializes the token with the name "Degen Gaming Token" and the symbol "DGT". Mints an initial supply of tokens to the contract deployer.

2. `mint(address account, uint256 amount)`: Allows the contract owner to mint new tokens and distribute them to any address. Only the owner can call this function.

3. `redeem(uint256 amount)`: Players can redeem their tokens for in-game items. Checks if the player's balance is sufficient and burns the specified amount of tokens. Custom in-game item redemption logic should be implemented.

4. `burn(uint256 amount)`: Allows anyone to burn their own tokens. Checks if the caller's balance is sufficient and burns the specified amount of tokens.

## Usage

1. Clone this repository or create a new Solidity file with the provided contract code.

2. Deploy the contract on the Avalanche network using tools like Remix, Truffle, or Hardhat.

3. Customize the in-game item redemption logic within the `redeem` function.

4. Thoroughly test and audit the contract before deploying it to a real network to ensure security and proper functionality.

## Disclaimer

This code is provided as an educational example. Security, gas optimization, and thorough testing are crucial when deploying any smart contract to a real network. Use at your own risk.

