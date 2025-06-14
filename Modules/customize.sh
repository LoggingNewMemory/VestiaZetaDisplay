LATESTARTSERVICE=true

ui_print "🗡--------------------------------🗡"
ui_print "  Vestia Zeta 120 Hz Refresh Rate   "
ui_print "🗡--------------------------------🗡"
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

ui_print "-----------------🗡-----------------"
ui_print "            MODULE INFO             "
ui_print "-----------------🗡-----------------"
ui_print "Name : Vestia Zeta 120 Hz"
ui_print "Version : 5.0"
ui_print "Support Root : Magisk / KernelSU"
ui_print " "
sleep 1.5

ui_print "    DO NOT INSTALL IF YOUR PHONE    "
ui_print "     DOESN'T HAVE 120 Hz SCREEN     "
ui_print " "

sleep 3
ui_print "       INSTALLING VESTIA ZETA       "
ui_print " "
sleep 1.5

unzip -o "$ZIPFILE" 'VestiaZeta/*' -d $MODPATH >&2
set_perm_recursive $MODPATH/VestiaZeta 0 0 0755 0644

ui_print "     CAT INSTALLED SUCCESSFULLY     "
sleep 1.5