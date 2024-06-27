# MySQL Installation Guide (Mac & Windows)

## Downloads
- **Download:** [MySQL Download](https://dev.mysql.com/downloads/mysql/)
    - Test With: `SHOW DATABASES;`
- **Download:** [MySQL Workbench Download](https://dev.mysql.com/downloads/workbench/)
    - Test by opening the app


## Windows

#### Installing MySQL
1. Go to [MySQL](https://dev.mysql.com/downloads/mysql/)
    - Double check, make sure Microsoft Windows is selected as OS
    - Select "Windows MSI Installer" (Should be top of the list)
    - Select "No thanks, just start my download"
2. Open downloaded installer file
    -  Redistribution Error?
        - Go to [Latest Microsoft Redistribution Version](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version)
        - Click on X64 link to download updated architecture.
        - Open the installer file, click "agree" and "install" (May potentially have to restart)
        - Retry running the MySQL installer
    - Click `Next`, Accept terms and click `Next`
    - Select `Typical` for Setup Type
    - Click `Install`
    - Make sure `Run MySQL Configurator` is selected and click `finish`

3. In MySQL Configurator
    - Click `Next`, keep default install location and then click `next` again
    - for Connectivity
        - Ensure TCP/IP is checked and a port is specified
    - Click `next`
    - Set a password for the `root` user
        - Also set up a backup RootUser
            - Click `Add User`
                - Username: `RootUser`
                - Password: Same as the one you just entered for the default root user
    - Click `next`
    - Keep Defaults for Windows Service
        - [x] Configure MySQL Server as a Windows Service
        - [x] Start the MySQL server at System Startup
        - [x] Standard System Account
    - Click `next`
    - Make sure `Grant Full Access` is selected
    - Click `next`
    - Do not select any sample databases
    - Click `next` and then `Execute`
    - Click `next` and then `finish`

4. In Windows Search Bar
    - Search `MySQL` and select `MySQL Command Line Client`
        - **Do not** select the Unicode version
    - Enter the password that you set earlier
    - You should now see the MySQL command line
    - Run the command to test if everything is running correctly
    ```sql
    SHOW DATABASES;
    ```
Congrats! MySQL is installed!

#### Installing MySQL Workbench

1. Go to [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
    - Make sure proper OS is selected
    - Under `Other Downloads`, download the MSI installer
    - Click "No thanks just start my download"
    - Open the installer
2. Click `next`, keep default install location and click `next` again
3. Select `Complete` for setup type, then click `next`
4. Click `Install` and then `Finish` (Leave Launch Workbench checked)

## Mac

#### Installing MySQL
1. Ensure that you have Homebrew installed
[Brew Documentation](https://brew.sh/)
    ```bash
    brew --version
    ```

2. Run install command
    ```bash
    brew install mysql
    ```


3. On successful installation, run command
    ```bash
    mysql.server start
    ```
4. On success, run the next command
    ```bash
    mysql -u root
    ```
- You should now see the MySQL command line

5. Run the command to test if everything is running correctly
    ```sql
    SHOW DATABASES;
    ```
Congrats! MySQL is installed!

#### Installing MySQL Workbench

1. Go to [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
2. Select the corect version based on your machine's chipset
    -  Click the Apple logo in the top left of your screen and check the chip type.
        - For M1 or M2 chipset, use the `ARM` installer
        - For Intel chipset, use the `x86` installer
    - Click "No thanks just start my download"
    - Open the installer
3. Drag and drop into Applications folder
4. Go to Launchpad and launch the MySQL Workbench

---


## Creating a New Connection

1. Click the `+` symbol next to "MySQL Connections"
    - Add a connection name
    - Test Connection
    - Set password
        - Mac: Optional
        - Windows: Required
        - Recommended: give a password anyway
2. Click `ok` and save the connection
3. View Schemas
4. Open the new connection
    - Create the database
    ```sql
    CREATE DATABASE <name of DB>;
    ```
5. Highlight the command and click the lightening bolt to run the script
    - OR 
        - Mac: `CMD + Enter`
        - Windows: `Cntrl + Enter`
6. Click the refresh button in schemas andyou should see your new database.
7. Select the database to use
    ```sql
    USE <name of DB>;
    ```
    