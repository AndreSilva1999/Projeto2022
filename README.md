# ISCTD 2.0: A new and improved version for helping research on inter-species interactions

Inter Species CrossTalk Database (ISCTD 2.0) is an Entity-Relationship database model, with the purpose of documenting and organize information related to Inter-species interactions. This information was previously deposited and curated on an online platform (https://www.ceb.uminho.pt/ISCTD/) were information regarding interactions between species in coinfection scenarios.

## VERSION 1.0.0

### REQUIREMENTS

1. All software used was installed under Windows 11 Home, version 21H2.
2. ISCTD 2.0 is written with SQL language and tested with MySQL Workbench and MariaDB. 
3. A similar Visual tool for database architects, developers, and DBAs can be used instead.
4. Microsoft . NET Framework 4.5. 2 or later

### Hardware Requirements

CPU: Intel Core or Xeon 3GHz (or Dual Core 2GHz) or equal AMD CPU.
Cores: Single (Dual/Quad Core is recommended)
RAM: 4 GB (6 GB recommended)
Graphic Accelerators: nVidia or ATI with support of OpenGL 1.5 or higher.
Display Resolution: 1280×1024 is recommended, 1024×768 is minimum.

## Installation

1. Upgrade your apt:

    `sudo apt upgrade`

2. If you already have Upgraded, update:
   
    `sudo apt update`

3. Install Mysql-server:
   
    `sudo apt install mysql-server`

4. Open Mysql and verify all information:
   
    `sudo mysql -u root`

Next simply go to https://dev.mysql.com/downloads/workbench/ and download the MySQL workbench file for your operative system.
If you select Ubuntu Linux, please verify your Ubuntu version (note that the version for Ubuntu 22.04 is the same as for the version 20.04).

1. `sudo dpkg -i mysql -filename`

If gnome-menus is not install in the system, please execute the following command:

2. `sudo apt-get gnome-menus`

Else you can skip this step

For opening: `mysql-workbench`

Now you are ready to pull all files from github (https://github.com/AndreSilva1999/Projeto2022)

Verify your version of git and if not installed:

`sudo apt install git`

Then follow the following steps:

1. `mkdir ISCTD`
2. `cd ISCTD`
3. `git init`
4. `git pull https://github.com/AndreSilva1999/Projeto2022.git`

Open your MySQL Workbench and import all sql/mwb files!
