import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("LearningEnum");
    const test = await Test.deploy();

    console.log("LearningEnum deployed to:", test.address);

    console.log(await test.status())

    const t = await test.ship();
    t.wait();

    console.log(await test.status())
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
