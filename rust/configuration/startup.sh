#!/bin/bash
ls -r /home/steam
/home/steam/RustDedicated -batchmode -server.datadir /data -server.hostname "Rust Docker Test" -server.seed 112588 -server.serverlog 1 -server.netlog 1 -server.saveinternal 300 -spawn.max_rate 1 -craft.instant true -server.maxplayers 64 -server.port 28015 
