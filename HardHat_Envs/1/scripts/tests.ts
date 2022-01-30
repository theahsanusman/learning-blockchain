import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("Killer");
    const test = await Test.deploy({
        value: ethers.utils.parseEther("1.0")
    });
    const Test2 = await ethers.getContractFactory("Helper");
    const test2 = await Test2.deploy();

    console.log(test.address);
    console.log(await test2.getBal());
    await test2.kill(test.address);
    console.log(await test2.getBal());

    // await test.deposit({
    //     value: ethers.utils.parseEther("1.0")
    // }); 

    // console.log(await (await test.getBal()).toString())

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
