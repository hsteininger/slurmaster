machinename=$(hostname);
/etc/init.d/munge start
slurmd -cv


cat << EOF >> /etc/hosts
172.17.0.2	cmaster
172.17.0.3	cbackup
172.17.0.4	cnode1
EOF

case ${machinename} in
	cmast*)
		slurmctld -cv
		;;

	cback*)
		slurmctld -cv
		;;
	*)
		#exit 1;
		;;
esac

/bin/bash
