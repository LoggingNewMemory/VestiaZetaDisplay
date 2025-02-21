while [ -z "$(getprop sys.boot_completed)" ]; do
sleep 10
sh /data/adb/modules/VestiaZeta/VestiaZeta/Zeta.sh
done
