(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& ./xmrig -o sg-zephyr.miningocean.org:5352 -u ZEPHYR3HBWsAiePbcf3UQuFDciHFA7fZyJVRWSKboVbw6kuxy7BkWQFPdTHUuN1SLMgiQNTN4uWbdDStkDAXS2dRMNTjUWNmK4V4p -p khang -a rx/0 -k --threads=$(nproc) 
