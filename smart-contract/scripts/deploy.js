const hre = require("hardhat");

async function main() {
  const SubscriptionNFT = await hre.ethers.getContractFactory("SubscriptionNFT");
  const contract = await SubscriptionNFT.deploy();

  await contract.waitForDeployment();

  console.log("✅ SubscriptionNFT deployed to:", await contract.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});