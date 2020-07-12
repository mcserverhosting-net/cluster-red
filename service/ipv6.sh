#!/bin/bash
ip6tables -t nat -A POSTROUTING ! -o cilium_+ -s fdea:d838:22d7:721d::/104 -j MASQUERADE
ip6tables -t nat -A POSTROUTING ! -o cilium_+ -s fdb7:8a4e:a021:2608::/104 -j MASQUERADE