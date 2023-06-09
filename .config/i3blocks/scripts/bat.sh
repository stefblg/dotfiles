#!/bin/bash

BATTERY=0
BATTERY_STATE=$(echo "${BATTERY_INFO}" | upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full" | awk '{print $2}')
BATTERY_POWER=$(echo "${BATTERY_INFO}" | upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}' | tr -d '%')
URGENT_VALUE=10

if [[ "${BATTERY_POWER}" -gt 87 ]]; then
    BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -gt 63 ]]; then
     BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -gt 38 ]]; then
     BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -gt 13 ]]; then
     BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -le 13 ]]; then
     BATTERY_ICON=""
else
    BATTERY_ICON=""
fi


if [[ "${BATTERY_STATE}" = "discharging" ]]; then
    echo "${BATTERY_ICON} ${BATTERY_POWER}%"
    echo "${BATTERY_ICON} ${BATTERY_POWER}%"
    echo ""
else
    echo " ${BATTERY_POWER}%"
    echo " ${BATTERY_POWER}%"
    echo ""
fi

if [[ "${BATTERY_POWER}" -le "${URGENT_VALUE}" ]]; then
  exit 33
fi