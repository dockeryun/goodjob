#! /bin/bash
function SYNRECV {   
/bin/ss -s | grep 'synrecv' | awk '{print $2}'  
}   
function ESTAB {   
/bin/ss -s | grep 'estab' | awk '{print $2}'  
}   
function FINWAIT1 {   
/bin/ss -o |  grep 'FIN-WAIT-1'|wc -l  
}   
function FINWAIT2 {   
/bin/ss -ant| grep 'FIN-WAIT-2' | wc -l  
}   
function TIMEWAIT {   
/bin/ss -ant | grep 'TIME-WAIT' | wc -l  
}   
function LASTACK {   
/bin/ss -ant | grep 'LAST-ACK' | wc -l  
}   
function LISTEN {   
/bin/ss -ant | grep 'LISTEN' | wc -l  
}   
$1  
