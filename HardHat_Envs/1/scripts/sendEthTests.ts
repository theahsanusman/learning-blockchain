import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("SendEth");
    const test = await Test.deploy({
        value: ethers.utils.parseEther("1.0")
    });
    const Test2 = await ethers.getContractFactory("EthReceive");
    const test2 = await Test2.deploy();

    console.log(await test.getBalance())
    console.log(await test2.getBalance())

    await test.sendViaTransfer(test2.address, 1.0e15);

    console.log(await test.getBalance())
    console.log(await test2.getBalance())

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
