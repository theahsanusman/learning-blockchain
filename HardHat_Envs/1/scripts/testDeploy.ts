import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("Test");
    const test = await Test.deploy();

    console.log("Test deployed to:", test.address);

    console.log(await (await (test.result())).toString());

    console.log(await (await test.bNo()).toString());
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
