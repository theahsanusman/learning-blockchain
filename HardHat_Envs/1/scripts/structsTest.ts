import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("LearningStructs");
    const test = await Test.deploy();

    console.log("LearningStructs deployed to:", test.address);
    const t = await test.examples();
    t.wait();

    console.log(await test.getCarsInfo())


}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
