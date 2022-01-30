import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("Test");
    const test = await Test.deploy();

    console.log("Test deployed to:", test.address);

    // console.log(await (await test.age()).toString())

    // const tx = await test.updateAge(11);
    // tx.wait();

    // console.log(await (await test.age()).toString())

    console.log(await test.getFullName());

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
