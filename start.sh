machinename=$(hostname);
/etc/init.d/munge start
slurmd -cv

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
