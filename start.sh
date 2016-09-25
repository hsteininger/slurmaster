
machinename=$(hostname);

case ${machinename} in
	cmast*)
		/etc/init.d/munge start
		slurmd -cv
		slurmctld -cv
		;;

	cback*)
		/etc/init.d/munge start
		slurmd -cv
		slurmctld -cv
		;;
	cnode*)
		/etc/init.d/munge start
		slurmd -cv
		#slurmctld -cDv
		;;
	*)
		exit 1;
		;;
esac
