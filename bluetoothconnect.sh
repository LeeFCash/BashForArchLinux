#!/bin/bash
bluetoothctl -- connect <ip>
bluetoothctl -- yes
bluetoothctl -- yes
bluetoothctl -- yes
sleep 2
bluetoothctl -- disconnect <ip>
sleep 2
bluetoothctl -- connect <ip>
bluetoothctl -- yes
bluetoothctl -- yes
bluetoothctl -- yes
bluetoothctl -- exit
