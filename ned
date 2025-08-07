
{
  "log": {
    "level": "warn",
    "timestamp": true
  },
  "dns": {
    "servers": [
        {
        "tag": "default",
        "address": "tls://8.8.8.8",
        "detour": "Hiddify_Nexttt"
      },
      {
        "tag": "local",
        "address": "https://1.1.1.1/dns-query",
        "detour": "Hiddify_Nexttt"
      }
    
    ],
    "rules": [
      {
        "outbound": "any",
        "server": "local"
      },
      {
        "clash_mode": "Global",
        "server": "default"
      },
      {
        "clash_mode": "Direct",
        "server": "local"
      }
    
    ],
    "final": "default",
    "strategy": "ipv4_only"
  },
  "inbounds": [
    {
      "type": "mixed",
      "listen": "127.0.0.1",
      "listen_port": 20122,
      "sniff": true,
      "sniff_override_destination": true,
      "domain_strategy": "ipv4_only",
      "tcp_fast_open": false,
      "tcp_multi_path": false,
      "udp_fragment": true
    },
    {
      "type": "http",
      "listen": "127.0.0.1",
      "listen_port": 8181,
      "sniff": true,
      "sniff_override_destination": true,
      "domain_strategy": "ipv4_only",
      "tcp_fast_open": false,
      "tcp_multi_path": false,
      "udp_fragment": true
    },
    {
      "type": "socks",
      "listen": "127.0.0.1",
      "listen_port": 8080,
      "sniff": true,
      "sniff_override_destination": true,
      "domain_strategy": "ipv4_only",
      "tcp_fast_open": false,
      "tcp_multi_path": false,
      "udp_fragment": true
    },
    {
      "type": "tun",
     "address": [
        "172.19.0.1/30",
        "fdfe:dcba:9876::1/126"
      ],
      "auto_route": true,
      "strict_route": true,
      "endpoint_independent_nat": false,
      "stack": "mixed",
      "platform": {
        "http_proxy": {
          "enabled": true,
          "server": "127.0.0.1",
          "server_port": 20122
        }
      },
      "sniff": true,
      "sniff_override_destination": true,
      "domain_strategy": "ipv4_only"
    }
  ],
  "outbounds": [
{
        "type": "selector",
        "tag": "Hiddify_Nexttt آیدی کانال تلگرام 👈",
        "outbounds": [
          "انتخاب",
          "انتخاب"
        
        
        ],
        "default" : "انتخاب",
        "interrupt_exist_connections": true
      },

   {
        "type": "selector",
        "tag": "Hiddify_Nexttt",
        "outbounds": [
          "انتخاب",
          "انتخاب"
        
        
        ],
        "default": "انتخاب",
        "interrupt_exist_connections": true
      },
 {
            "tag": "@Hiddify_Nexttt",
            "type": "selector",
            "interrupt_exist_connections": true,
           
            "outbounds": [
                "انتخاب",
                            "Netherlands 🇳🇱"

            ]
        },

        {
            "tag": "انتخاب",
            "type": "urltest",
            "url": "http://cp.cloudflare.com",
            "interval": "10m0s",
            "outbounds": [
              "Netherlands 🇳🇱"

                
  
            ]
        },


        {
      "type": "shadowsocks",
      "tag": "Netherlands 🇳🇱",
      "server": "nl-svc-ol-1.hostik.org",
      "server_port": 443,
      "method": "chacha20-ietf-poly1305",
      "password": "yODLXVLz2FWNTFeSSng3Fm"
    },
    {
      "type": "direct",
      "tag": "direct"
    }
  ],
  "route": {
    "rules": [
      {
        "inbound": "tun-in",
        "action": "sniff"
      },
      {
        "protocol": "dns",
        "action": "hijack-dns"
      },
      {
        "clash_mode": "Global",
        "outbound": "Hiddify_Nexttt"
      },
      {
        "clash_mode": "Direct",
        "outbound": "direct"
      },
      {
        "network": "tcp",
        "port": 853,
        "action": "reject",
        "method": "default"
      },
      {
        "network": "udp",
        "port": 443,
        "action": "reject",
        "method": "default"
      },
      
      {
        "inbound": "tun-in",
        "action": "resolve"
      },
      
      {
        "ip_cidr": "10.10.34.0/24",
        "outbound": "Hiddify_Nexttt"
      },
      {
        "ip_is_private": true,
        "outbound": "direct"
      }
    ],
    "rule_set": [
      
    ],
    "final": "Hiddify_Nexttt",
    "auto_detect_interface": true
  },
  "experimental": {
    "cache_file": {
      "enabled": true
    }
  }
}
