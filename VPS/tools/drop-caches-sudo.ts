import { exec } from "child_process";
import { promisify } from "util";

const execPromise = promisify(exec);

async function optimizeMemory(): Promise<void> {
    try {
        const { stdout, stderr } = await execPromise("echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a", {
            encoding: "utf-8",
            shell: "/bin/bash"
        });

        if (stderr) {
            console.error(`Fail: ${stderr}`);
            return;
        }

        console.log(`Memory optimization successful: ${new Date().toLocaleString('cs-CZ')}`);
    } catch (error) {
        console.error(`A memory optimization error occurred: ${error}`);
    }
}
function startOptimizationLoop() {
    optimizeMemory();
    setInterval(optimizeMemory, 15 * 60 * 1000);
}

startOptimizationLoop();