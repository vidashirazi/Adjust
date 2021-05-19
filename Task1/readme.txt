Build instructions:
It's a simple BASH script file and does not require any compile or build process. It just needs to copy the files to production environment. Regarding this scenario, please follow below steps:

	-Copy the random.sh file to the destination folder.

	-Give execution permission to the copied file in destination folder with bellow command:
		chmod +x random.sh


Usage:

Regarding the random number generation execution, run either of the below commands in the destination folder:

	./random.sh

	bash random.sh



Description:

The script generates numbers from 1 - 10 in random order. Numbers will appear in each line and only once.

The script uses awk in bash to generate output. 



Known limitations / bugs:

- The script depends on BASH. It means BASH needs to be installed on the destination system.

- Malfunctionality of rand() and srand() in AWK language can happen. Its possibility is very low based on POSIX documents and different implementations but is a known issue. 

	
