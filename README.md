''Dokerized SLURM''


** TODO: Fill README.md


docker build -t hsteininger/slurmmaster .

docker run -it -h cmaster --name=cmaster hsteininger/slurmmaster /bin/bash

docker run -it -h cbackup --name=cbackup hsteininger/slurmmaster /bin/bash

docker run -it -h cnode1 --name=cnode1 hsteininger/slurmmaster /bin/bash



docker attach {cmaster,cbackup,cnode[1-99]}


/root/bin/start.sh
