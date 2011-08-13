#!/bin/sh

ACPIOUTPUT=$(acpi)
string=${ACPIOUTPUT#*: }


IFS=","
set dummy $string
status=$2
percent=$3
time=${4:1:5}

case $status in
  Full)
    echo "AC ${percent## }"
	;;
  Charging)
	echo "AC ${percent## }"
	;;
  Unknown)
	echo "AC ${percent## }"
	;;
  Discharging)
	echo "Bat ${time#*0}"
#	if test ${percent%"%"} -le 5; then
#	FvwmCommand 'Module FvwmForm LowBattery TIME='${time#*0}''; fi
	;;
esac

exit 0
