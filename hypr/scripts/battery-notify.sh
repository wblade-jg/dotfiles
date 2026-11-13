#!/usr/bin/env bash
# Notificaciones de batería: baja (15%) y llena (100%)

BATTERY="/sys/class/power_supply/BAT1"
LOW_THRESHOLD=15
FULL_THRESHOLD=100

notified_low=false
notified_full=false

while true; do
    capacity=$(cat "$BATTERY/capacity")
    status=$(cat "$BATTERY/status")   # Charging / Discharging / Full

    # --- Batería llena ---
    if [[ "$status" == "Full" || ( "$status" == "Charging" && "$capacity" -ge "$FULL_THRESHOLD" ) ]]; then
        if ! $notified_full; then
            notify-send -u normal -i battery-full "Batería llena" "Puedes desconectar el cargador (${capacity}%)"
            notified_full=true
        fi
    else
        notified_full=false
    fi

    # --- Batería baja ---
    if [[ "$status" == "Discharging" && "$capacity" -le "$LOW_THRESHOLD" ]]; then
        if ! $notified_low; then
            notify-send -u critical -i battery-low "Batería baja" "${capacity}% — conecta el cargador"
            notified_low=true
        fi
    else
        notified_low=false
    fi

    sleep 60
done
