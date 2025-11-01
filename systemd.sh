#!/bin/bash



systemd_enable=(

	# === systemd enable ===
	NetworkManager
	dbus
	sddm
	power-profiles-daemon

)


systemd_disable=(

	# === systemd disable ===
    	systemd-networkd
	systemd-resolved

)






for sys_e in ${systemd_enable[@]}; do
	sudo systemctl enable --now ${sys_e}.service
done;

for sys_d in ${systemd_disable[@]}; do
	sudo systemctl enable --now ${sys_d}.service
done;
