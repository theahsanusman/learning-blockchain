import { ethers } from "hardhat";

async function main() {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.attach("0x5FbDB2315678afecb367f032d93F642f64180aa3");

    console.log("Greeter deployed to:", greeter.address);
    const g = await greeter.greet();
    console.log(g)
return
    const tx = await greeter.setGreeting('Hey Ahsan');
    console.log(tx)

    tx.wait();

    console.log(await greeter.greet())
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
