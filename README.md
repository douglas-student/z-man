```


              .__.                      
           _/~   -"s,                   
          a'        4c                  
         j(     .    4L                 
        ]D:_s>;=;;;=;)Qc                
       .Qkwq,=mciissiiWQ.               
       jWQD`  "Wwms_IqQQ[               #          ,----,                      ____                            ,--. #
       mWQ'    ]Q!  "$QQm               #        .'   .`|                    ,'  , `.    ,---,               ,--.'| #
       QQW  a/  [    -QQQ               #     .'   .'   ;                 ,-+-,.' _ |   '  .' \          ,--,:  : | #
       QQE  Qf  ; ]Q  3QQ               #   ,---, '    .'     ,---,.   ,-+-. ;   , ||  /  ;    '.     ,`--.'`|  ' : #
      .QQQ      ; )?  mQQ.              #   |   :     ./    ,'  .' |  ,--.'|'   |  ;| :  :       \    |   :  :  | | #
      <QQQ,   .-'.   jWQQ;              #   ;   | .'  /   ,---.'   , |   |  ,', |  ': :  |   /\   \   :   |   \ | : #
      jWQQm, .`  -._mWWQQ[              #   `---' /  ;    |   |    | |   | /  | |  || |  :  ' ;.   :  |   : '  '; | #
     .QWQQP~=;    :+-4QQQQ.             #     /  ;  /     :   :  .'  '   | :  | :  |, |  |  ;/  \   \ '   ' ;.    ; #
     jWQQf   -.  .    4QQQL             #    ;  /  /--,   :   |.'    ;   . |  ; |--'  '  :  | \  \ ,' |   | | \   | #
    /jQQP     -..      $QQk=            #   /  /  / .`|   `---'      |   : |  | ,     |  |  '  '--'   '   : |  ; .' #
  ./qQQQ'              )QQQz(           # ./__;       :              |   : '  |/      |  :  :         |   | '`--' #
 .=wQQQD                $QQQw=.         # |   :     .'               ;   | |`-'       |  | ,'         '   : | #
 imQ@QQf                ]QQQWm|         # ;   |  .'                  |   ;/           `--''           ;   |.' #
)m@" QQ'                ]QQ "$m(        # `---'                      '---'                            '---' #
)"   QQ:                =QW   ?'        
     4Q:                =QF             
      Qc. . ..... ... . jW              
      ]k;===;;;;;=;;;=:=df              
       $i|+|i|i|i|ii|||i@               
      .    .-{nnnn}-                    ╔═══════════════════════════════════════════════════════════════════════════╗
     .        {mq(                      ║                                                                           ║
    .          $D          .                                      LINUX USERS MANAGER
    .. .     ..mk.      . .:            ║                                                                           ║
    -::.....:::--:_:.....::`            ╚═══════════════════════════════════════════════════════════════════════════╝
                                        
                                        


```
# Z-MAN - LINUX USERS MANAGE [:brazil:](LEIAME.md)
## DIO Exercise: Create a script that creates groups and users on the Linux operating system

## Installation Procedures

Follow the steps below to install and run the scripts on your Linux system.

### Prerequisites

Ensure you have the following installed on your system:
- Bash shell
- Necessary permissions to create users and groups

### Installing the Scripts

1. **Clone the Repository**

   First, clone the repository to your local machine. Replace `<repository-url>` with the actual URL of your repository.

   ```bash
   git clone https://github.com/douglas-student/z-man.git
   cd z-man
   ```

2. **Navigate to the Scripts Directory**

   Change to the directory where the scripts are located. For example:

   ```bash
   cd ./scripts
   ```

3. **Make the Scripts Executable**

   You need to make the scripts executable. Run the following commands:

   ```bash
   chmod +x iac1.sh
   ```

4. **Run the Script**

   Now you can run the script using the following command:

   - To execute the Infrastructure as Code script:
     ```bash
     ./iac1.sh
     ```

### Notes

- Ensure to review the scripts before running them to understand their functionality and make any necessary adjustments based on your requirements.
- Run these scripts with the appropriate permissions (e.g., as root or using `sudo`) to avoid permission issues while creating users and groups.

## Project Setup with Docker

Follow the steps below to set up and run the project using Docker.

### Requirements

Ensure you have the following installed on your system:

- Git
- Docker
- Bash
- Openssl

## Step-by-Step Instructions

1. **Install and Use a Docker Image of Ubuntu**

   Pull the Ubuntu Docker image and run it interactively:

   ```bash
   docker run -it ubuntu:latest /bin/bash
   ```

2. **Install Dependencies and Clone the Project Repository**

   Inside the Docker container, run the following commands to install dependencies and clone the project:

   ```bash
   apt-get update
   apt-get install -y openssl git
   mkdir bash-scripts
   cd bash-scripts
   git clone https://github.com/douglas-student/z-man.git
   ```

3. **Navigate to the Project Directory**

   Change into the project directory where your scripts are located:

   ```bash
   cd z-man/scripts
   ```

4. **Execute the Script Inside the Docker Container**

   Make the script executable and run it:

   ```bash
   chmod +x iac1.sh  # Ensure the script is executable
   ./iac1.sh         # Execute the script
   ```

### Notes

- Ensure to review the script before running it to understand its functionality and make any necessary adjustments based on your requirements.
- If you encounter permission issues while running the script, you may need to run Docker with elevated privileges or as a user with appropriate permissions.



Aqui está a seção sobre o `uninstall.sh` em inglês para incluir no seu README:

```markdown
## Uninstall Script

To undo the changes made by the `iac1.sh` script, you can use the `uninstall.sh` script. This script will remove the users, groups, and directories that were created during the execution of `iac1.sh`.

### Usage Instructions

1. **Open a terminal.**

2. **Navigate to the project directory where the `uninstall.sh` script is located.**
   ```bash
   cd /bash-scripts/z-man/scripts
   ```

3. **Give execution permission to the `uninstall.sh` script:**
   ```bash
   chmod +x uninstall.sh
   ```

4. **Run the script with superuser privileges:**
   ```bash
   sudo ./uninstall.sh
   ```

### What the script does?

- Removes the following users:
  - carlos
  - maria
  - joao
  - debora
  - sebastiana
  - roberto
  - josefina
  - amanda
  - rogerio

- Removes the following groups:
  - GRP_ADM
  - GRP_VEN
  - GRP_SEC

- Removes the following directories:
  - /publico
  - /adm
  - /ven
  - /sec

### Attention

- The `uninstall.sh` script permanently removes users and directories. Ensure that there is no important data you wish to keep before executing it.
- It is recommended to run this script in a testing environment before using it on a production system.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.
