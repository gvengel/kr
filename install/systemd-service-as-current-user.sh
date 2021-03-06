#!/bin/bash
cat - <<EOF
[Unit]
Description=Krypton daemon

[Service]
ExecStart=/usr/bin/krd
Restart=on-failure
User=${SUDO_USER:-$USER}

[Install]
WantedBy=default.target
EOF
