// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SubscriptionNFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;
    mapping(address => bool) public isSubscribed;

    constructor() ERC721("SubscriptionNFT", "SNFT") Ownable(msg.sender) {}

    function mintSubscription() public payable {
        require(msg.value >= 0.001 ether, "Not enough ETH");
        require(!isSubscribed[msg.sender], "Already subscribed");

        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, "https://example.com/nft/metadata.json");

        isSubscribed[msg.sender] = true;
        tokenCounter++;
    }
}