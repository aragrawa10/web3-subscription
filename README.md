# 🎟️ Web3 Subscription NFT

A full-stack decentralized application (dApp) that allows users to **mint an NFT to gain subscription access** to premium content or features. Built using **Solidity**, **Hardhat**, **Next.js**, and **Ethers.js**. Deployed on **Sepolia Testnet**.

---

## 🚀 Features

- 🧾 **NFT Subscription Model** — Users can mint a subscription NFT for 0.001 ETH
- 🔐 **Token-Gated Access** — Only subscribed wallets can access content
- 💼 **Smart Contract Ownership** — Built using OpenZeppelin's Ownable pattern
- 💻 **Modern Frontend** — Built with Next.js and integrated with MetaMask
- 🌐 **Testnet Deployment** — Live on Sepolia with Alchemy RPC

---

## 🛠️ Tech Stack

| Layer         | Tech                                |
|---------------|--------------------------------------|
| Smart Contract| Solidity, Hardhat, OpenZeppelin     |
| Frontend      | Next.js, Ethers.js, Tailwind CSS     |
| Wallet        | MetaMask                            |
| Testnet       | Sepolia via Alchemy                 |

---

## 📄 Smart Contract

```solidity
function mintSubscription() public payable {
    require(msg.value >= 0.001 ether, "Not enough ETH");
    require(!isSubscribed[msg.sender], "Already subscribed");

    uint256 newTokenId = tokenCounter;
    _safeMint(msg.sender, newTokenId);
    _setTokenURI(newTokenId, "https://example.com/nft/metadata.json");

    isSubscribed[msg.sender] = true;
    tokenCounter++;
}
