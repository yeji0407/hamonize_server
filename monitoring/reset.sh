#!/bin/bash
sudo rm /hamonize_monitoring/*
sudo rm /etc/systemd/system/sendinflux.*
sudo systemctl daemon-reload
