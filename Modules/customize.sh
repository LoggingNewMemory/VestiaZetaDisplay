LATESTARTSERVICE=true

ui_print "------------------------------------"
ui_print "         Vestia Zeta Display        "
ui_print "------------------------------------"
ui_print "         By: Kanagawa Yamada        "
ui_print "------------------------------------"
ui_print " "
sleep 1.5

ui_print "-----------------📱-----------------"
ui_print "            DEVICE INFO             "
ui_print "-----------------📱-----------------"
ui_print "DEVICE : $(getprop ro.build.product) "
ui_print "MODEL : $(getprop ro.product.model) "
ui_print "MANUFACTURE : $(getprop ro.product.system.manufacturer) "
ui_print "PROC : $(getprop ro.product.board) "
ui_print "CPU : $(getprop ro.hardware) "
ui_print "ANDROID VER : $(getprop ro.build.version.release) "
ui_print "KERNEL : $(uname -r) "
ui_print "RAM : $(free | grep Mem |  awk '{print $2}') "
ui_print " "
sleep 1.5

ui_print "------------------------------------"
ui_print "            MODULE INFO             "
ui_print "------------------------------------"
ui_print "Name : Vestia Zeta Display"
ui_print "Version : 6.0"
ui_print "Support Root : Magisk / KernelSU"
ui_print " "
sleep 1.5

ui_print "       INSTALLING VESTIA ZETA       "
ui_print " "

unzip -o "$ZIPFILE" 'VestiaZeta/*' -d $MODPATH >&2
set_perm_recursive $MODPATH/VestiaZeta 0 0 0755 0644

sleep 3

case "$((RANDOM % 4 + 1))" in
1) ui_print "Aaa... Jangan dong" ;;
2) ui_print "Kamu teh dibangunin dari tadi gak bangun bangun" ;;
3) ui_print "Meow ~" ;;
4) ui_print "I'M NOT A CAT!!" ;;
esac
sleep 1.5