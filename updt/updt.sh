#!/bin/bash

function errorMessage() {
    printf "Get:1 http://mirror1.sox.rs/kali/kali kali-rolling InRelease [41.5 kB]"
    sleep .3
    printf "Get:2 http://mirror1.sox.rs/kali/kali kali-rolling/main amd64 Packages [19.1 MB]"
    sleep .1
    printf "Get:3 http://mirror1.sox.rs/kali/kali kali-rolling/main amd64 Contents (deb) [44.6 MB]"
    sleep .4
    printf "Get:4 http://mirror1.sox.rs/kali/kali kali-rolling/contrib amd64 Packages [101 kB]"
    sleep .5
    printf "Get:5 http://mirror1.sox.rs/kali/kali kali-rolling/contrib amd64 Contents (deb) [219 kB]"
    sleep .1
    printf "Get:6 http://mirror1.sox.rs/kali/kali kali-rolling/non-free amd64 Packages [192 kB]"
    sleep .2
    printf "Get:7 http://mirror1.sox.rs/kali/kali kali-rolling/non-free amd64 Contents (deb) [863 kB]"
    sleep 1
    printf ""
    printf "Reading package lists... Done"
    sleep .1
    printf "Reading state information... Done"
}