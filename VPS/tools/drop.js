const { exec } = require('child_process');

// Function to execute system commands and log success with date and time
const executeSystemCommands = () => {
    const now = new Date();
    const currentTime = now.toLocaleString();

    exec('echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a', (error, stdout, stderr) => {
        if (error) {
            console.error(`${currentTime} - Error executing commands: ${error}`);
            return;
        }
        console.log(`${currentTime} - Commands executed successfully. Logging to console! ${stdout}`);
    });
};

// Function to repeat commands every 35 minutes
const runCommandsEveryThirtyFiveMinutes = () => {
    executeSystemCommands(); // Immediate execution of commands
    setInterval(executeSystemCommands, 35 * 60 * 1000); // Execute commands every 35 minutes
};

// Start the execution of commands with an interval of 35 minutes
runCommandsEveryThirtyFiveMinutes();