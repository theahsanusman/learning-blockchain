import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("LearningArrays");
    const test = await Test.deploy();

    console.log("LearningArrays deployed to:", test.address);

    const t = await test.remove(3);
    t.wait();
    console.log(await test.returnArray());
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
