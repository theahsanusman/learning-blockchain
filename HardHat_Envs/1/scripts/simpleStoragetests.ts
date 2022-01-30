import { ethers } from "hardhat";

async function main() {
    const Test = await ethers.getContractFactory("TodoList");
    const test = await Test.deploy();

    console.log("TodoList deployed to:", test.address);

    const t = await test.create('Test 1');
    t.wait();

    console.log(await test.get(0))

    const t2 = await test.update(0, 'Test 1 updated');
    t2.wait();

    const t3 = await test.toggle(0);
    t3.wait();

    console.log(await test.get(0))

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
