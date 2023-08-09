// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    event RedemptionSuccessful(address indexed player, uint256 prizeId);

    struct Prize {
        uint256 id;
        uint256 cost;
    }

    Prize[] public prizes;

    constructor() ERC20("Degen Gaming Token", "DGT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());

        // Initialize some example prizes
        prizes.push(Prize(1, 100)); // Prize ID 1 costs 100 tokens
        prizes.push(Prize(2, 200)); // Prize ID 2 costs 200 tokens
        prizes.push(Prize(3, 300)); // Prize ID 3 costs 300 tokens
    }

    // Mint new tokens
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Redeem tokens for in-game items
    function redeem(uint256 prizeId) public {
        require(prizeId < prizes.length, "Invalid prize ID");
        
        uint256 prizeCost = prizes[prizeId].cost;
        require(balanceOf(msg.sender) >= prizeCost, "Insufficient balance");
        
        _burn(msg.sender, prizeCost);
        emit RedemptionSuccessful(msg.sender, prizeId);
    }

    // Burn Fractional tokens
    function burnFractional(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
}
