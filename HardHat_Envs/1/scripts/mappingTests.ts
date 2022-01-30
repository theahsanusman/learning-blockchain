import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("LearningMappings");
    const test = await Test.deploy();

    console.log("LearningArrays deployed to:", test.address);

    const t = await test.examples();
    t.wait();

    console.log(await test.getBal())

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
