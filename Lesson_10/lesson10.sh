#1/bin/bash/

addipdetailstofile() {
        echo "\nIP Details" >>$1 
	hostname -I >>$1
	echo "" >>$1
}

adduptimetofile() {
	echo "Uptime" >>$1
	uptime  >>$1
	echo "" >>$1
}

addlastlogintofile() {
	echo "Last login details" >>$1
	last | head -n 1 >>$1
	echo "" >>$1
}
add_disk_space_utilization_to_file() {
	echo "Disk Space Utilization" >>$1
	df -h | grep "/dev/sd" >>$1
	echo "" >>$1
}
add_memory_stats_to_file() {
	echo "Free Memory Stats" >>$1

	cat /proc/meminfo | grep "MemTotal\|MemFree\|MemAvailable" >>$1
        echo "" >>$1
}

filename="/systemlog/info-`date +'%Y-%m-%d_%H:%M:%S'`.log"
mkdir -p /systemlog

cleanup(){
	ls -d /systemlog/* | sort -r | tail -n +10 | xargs rm -f
}
cleanup
addipdetailstofile "$filename"
adduptimetofile "$filename"
addlastlogintofile "$filename"
add_disk_space_utilization_to_file "$filename"
add_memory_stats_to_file "$filename"

