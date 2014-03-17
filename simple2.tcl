
 set val(chan)         Channel/WirelessChannel  ;
 set val(prop)         Propagation/TwoRayGround ;
 set val(ant)          Antenna/OmniAntenna      ;
 set val(ll)           LL                       ;
 set val(ifq)          Queue/DropTail/PriQueue  ;
 set val(ifqlen)       200                      ;
 set val(netif)        Phy/WirelessPhy          ;
 set val(mac)          Mac/802_11               ;
 set val(nn)           20                       ;
 set val(rp)           AODV                     ;
 set val(x)            500
 set val(y)            500
 set ns [new Simulator]


$ns color 0 brown 
set f [open log.tr w]
$ns trace-all $f
set namtrace [open log.nam w]
$ns namtrace-all-wireless $namtrace $val(x) $val(y)
 

set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)

set chan_1 [new $val(chan)]
set chan_2 [new $val(chan)]
set chan_3 [new $val(chan)]
set chan_4 [new $val(chan)]

 
$ns node-config  -adhocRouting $val(rp) \
                 -llType $val(ll) \
                 -macType $val(mac) \
                 -ifqType $val(ifq) \
                 -ifqLen $val(ifqlen) \
                 -antType $val(ant) \
                 -propType $val(prop) \
                 -phyType $val(netif) \
                 -topoInstance $topo \
		 -energyModel "EnergyModel"\
		 -initialEnergy 90\
		 -txPower 1.175\
	         -rxPower 0.175\
		 -idlePower 1.0\
		 -sensePower 1.00000175\
		 -sleepPower 1.001\
                 -agentTrace ON \
                 -routerTrace ON \
                 -macTrace ON \
                 -movementTrace ON \
                 -channel $chan_1   \

 proc finish {} {
        global ns f namtrace
        $ns flush-trace
        close $namtrace


        exec nam log.nam &
 
        exit 0
}


proc record {} {
  global node-id1 sink0 sink1 sink2 sink3 sink4 sink5 sink6 sink7 sink8 sink9 sink10 sink11 sink(12) sink(13) sink(14) sink(15) sink(16) sink(17) sink(18) sink(19) f0
    
 

   set ns [Simulator instance]
    

   set time 0.05
 

   set now [$ns now]
    
 

   $ns at [expr $now+$time] "record"
  }
                         
set n(0) [$ns node]
$ns at 0.0 "$n(0) color blue"
$n(0) color red
$n(0) shape "circle"

set n(1) [$ns node]
$ns at 0.0 "$n(1) color blue"
$n(1) color red
$n(1) shape "circle"

set n(2) [$ns node]
$ns at 0.0 "$n(2) color blue"
$n(2) color red
$n(2) shape "circle"

set n(3) [$ns node]
$ns at 0.0 "$n(3) color blue"
$n(3) color red
$n(3) shape "circle"

set n(4) [$ns node]
$ns at 0.0 "$n(4) color blue"
$n(4) color red
$n(4) shape "circle"
                                                                                                                                             
set n(5) [$ns node]
$ns at 0.0 "$n(5) color blue"
$n(5) color red
$n(5) shape "circle"

set n(6) [$ns node]
$ns at 0.0 "$n(6) color blue"
$n(6) color red
$n(6) shape "circle"

set n(7) [$ns node]
$ns at 0.0 "$n(7) color blue"
$n(7) color red
$n(7) shape "circle"
                                                                                                                                             
set n(8) [$ns node]
$ns at 0.0 "$n(8) color blue"
$n(8) color red
$n(8) shape "circle"
                                                                                                                                             
set n(9) [$ns node]
$ns at 0.0 "$n(9) color blue"
$n(9) color red
$n(9) shape "circle"
                                                                                                                                             
set n(10) [$ns node]
$ns at 0.0 "$n(10) color red"
$n(10) color red
$n(10) shape "circle"
                                                                                                                                             
set n(11) [$ns node]
$ns at 0.0 "$n(11) color blue"
$n(11) color red
$n(11) shape "circle"

set n(12) [$ns node]
$ns at 0.0 "$n(12) color red"
$n(12) color red
$n(12) shape "circle"

set n(13) [$ns node]
$ns at 0.0 "$n(13) color blue"
$n(13) color red
$n(13) shape "circle"
                                                                                                                                             
set n(14) [$ns node]
$ns at 0.0 "$n(14) color red"
$n(14) color red
$n(14) shape "circle"    

set n(15) [$ns node]
$ns at 0.0 "$n(15) color blue"
$n(15) color red
$n(15) shape "circle"

set n(16) [$ns node]
$ns at 0.0 "$n(16) color blue"
$n(16) color red
$n(16) shape "circle"

set n(17) [$ns node]
$ns at 0.0 "$n(17) color blue"
$n(17) color red
$n(17) shape "circle"

set n(18) [$ns node]
$ns at 0.0 "$n(18) color blue"
$n(18) color red
$n(18) shape "circle"

set n(19) [$ns node]
$ns at 0.0 "$n(19) color blue"
$n(19) color red
$n(19) shape "circle"

                                                                                                                  



 

 
 
 
for {set i 0} {$i < $val(nn)} {incr i} {
        $ns initial_node_pos $n($i) 20+i*10
}



 
$ns at 0.0 "$n(0) setdest 50.0 50.0 10000.0"
$ns at 0.0 "$n(1) setdest 50.0 150.0 10000.0"
$ns at 0.0 "$n(2) setdest 283.0 262.0 10000.0"
$ns at 0.0 "$n(3) setdest 50.0 350.0 10000.0"
$ns at 0.0 "$n(4) setdest 50.0 450.0 10000.0"


$ns at 0.0 "$n(5) setdest 150.0 50.0 10000.0"
$ns at 0.0 "$n(6) setdest 140.0 136.0 10000.0"
$ns at 0.0 "$n(7) setdest 215.0 321.0 10000.0"
$ns at 0.0 "$n(8) setdest 150.0 350.0 10000.0"
$ns at 0.0 "$n(9) setdest 150.0 450.0 10000.0"

$ns at 0.0 "$n(10) setdest 214.0 199.0 10000.0"
$ns at 0.0 "$n(11) setdest 371.0 265.0 10000.0"
$ns at 0.0 "$n(12) setdest 250.0 250.0 10000.0"
$ns at 0.0 "$n(13) setdest 250.0 5.0.0 10000.0"
$ns at 0.0 "$n(14) setdest 250.0 450.0 10000.0"
$ns at 0.0 "$n(15) setdest 5.0.0 50.0 10000.0"
$ns at 0.0 "$n(16) setdest 5.0.0 150.0 10000.0"
$ns at 0.0 "$n(17) setdest 5.0.0 250.0 10000.0"
$ns at 0.0 "$n(18) setdest 5.0.0 5.0.0 10000.0"
$ns at 0.0 "$n(19) setdest 5.0.0 450.0 10000.0"

$ns at 0.0 "$n(0) label SENDER_NODE"
$ns at 0.0 "$n(4) label SENDER_NODE"
$ns at 0.0 "$n(2) label RECEIVER_NODE"
$ns at 0.0 "$n(11) label RECEIVER_NODE"

$ns at 0.1 "$n(0) setdest 450.0 150.0 50.0"
$ns at 0.1 "$n(1) setdest 450.0 50.0 50.0"
$ns at 0.1 "$n(2) setdest 150.0 150.0 50.0"
$ns at 0.1 "$n(3) setdest 50.0 150.0 50.0"
$ns at 0.1 "$n(4) setdest 150.0 50.0 50.0"
$ns at 0.1 "$n(5) setdest 5.0.0 50.0 50.0"
$ns at 0.1 "$n(6) setdest 250.0 50.0 50.0"
$ns at 0.1 "$n(7) setdest 250.0 150.0 50.0"
$ns at 0.1 "$n(8) setdest 50.0 250.0 50.0"
$ns at 0.1 "$n(9) setdest 50.0 50.0 50.0"
$ns at 0.1 "$n(10) setdest 5.0.0 150.0 50.0"
$ns at 0.1 "$n(11) setdest 5.0.0 250.0 50.0"
$ns at 0.1 "$n(12) setdest 250.0 250.0 50.0"
$ns at 0.1 "$n(13) setdest 150.0 250.0 50.0"
$ns at 0.1 "$n(14) setdest 150.0 5.0.0 50.0"
$ns at 0.1 "$n(15) setdest 5.0.0 450.0 50.0"
$ns at 0.1 "$n(16) setdest 450.0 250.0 50.0"
$ns at 0.1 "$n(17) setdest 250.0 5.0.0 50.0"
$ns at 0.1 "$n(18) setdest 250.0 450.0 50.0"
$ns at 0.1 "$n(19) setdest 150.0 450.0 50.0"



set sink0 [new Agent/LossMonitor]
set sink1 [new Agent/LossMonitor]
set sink2 [new Agent/LossMonitor]
set sink3 [new Agent/LossMonitor]
set sink4 [new Agent/LossMonitor]
set sink5 [new Agent/LossMonitor]
set sink6 [new Agent/LossMonitor]
set sink7 [new Agent/LossMonitor]
set sink8 [new Agent/LossMonitor]
set sink9 [new Agent/LossMonitor]
set sink10 [new Agent/LossMonitor]
set sink11 [new Agent/LossMonitor]
set sink12 [new Agent/LossMonitor]
set sink13 [new Agent/LossMonitor]
set sink14 [new Agent/LossMonitor]
set sink15 [new Agent/LossMonitor]
set sink16 [new Agent/LossMonitor]
set sink17 [new Agent/LossMonitor]
set sink18 [new Agent/LossMonitor]
set sink19 [new Agent/LossMonitor]



$ns attach-agent $n(0) $sink0
$ns attach-agent $n(1) $sink1
$ns attach-agent $n(2) $sink2
$ns attach-agent $n(3) $sink3
$ns attach-agent $n(4) $sink4
$ns attach-agent $n(5) $sink5
$ns attach-agent $n(6) $sink6
$ns attach-agent $n(7) $sink7
$ns attach-agent $n(8) $sink8
$ns attach-agent $n(9) $sink9
$ns attach-agent $n(10) $sink10
$ns attach-agent $n(11) $sink11
$ns attach-agent $n(12) $sink12
$ns attach-agent $n(13) $sink13
$ns attach-agent $n(14) $sink14
$ns attach-agent $n(15) $sink15
$ns attach-agent $n(16) $sink16
$ns attach-agent $n(17) $sink17
$ns attach-agent $n(18) $sink18
$ns attach-agent $n(19) $sink19



set udp0 [new Agent/UDP]
$ns attach-agent $n(0) $udp0
set udp1 [new Agent/UDP]
$ns attach-agent $n(1) $udp1
set udp2 [new Agent/UDP]
$ns attach-agent $n(2) $udp2
set udp3 [new Agent/UDP]
$ns attach-agent $n(3) $udp3
set udp(4) [new Agent/UDP]
$ns attach-agent $n(4) $udp(4)
set udp5 [new Agent/UDP]
$ns attach-agent $n(5) $udp5
set udp6 [new Agent/UDP]
$ns attach-agent $n(6) $udp6
                                                                                                                 
set udp7 [new Agent/UDP]
$ns attach-agent $n(7) $udp7
set udp8 [new Agent/UDP]
$ns attach-agent $n(8) $udp8
set udp9 [new Agent/UDP]
$ns attach-agent $n(9) $udp9
set udp(10) [new Agent/MYUDP]
$ns attach-agent $n(10) $udp(10)
set udp11 [new Agent/UDP]
$ns attach-agent $n(11) $udp11
set udp12 [new Agent/MYUDP]
$ns attach-agent $n(12) $udp12
set udp13 [new Agent/UDP]
$ns attach-agent $n(13) $udp13
set udp14 [new Agent/UDP]
$ns attach-agent $n(14) $udp14
set udp15 [new Agent/UDP]
$ns attach-agent $n(15) $udp15
set udp16 [new Agent/UDP]
$ns attach-agent $n(16) $udp16
set udp17 [new Agent/UDP]
$ns attach-agent $n(17) $udp17
set udp18 [new Agent/UDP]
$ns attach-agent $n(18) $udp18
set udp19 [new Agent/UDP]
$ns attach-agent $n(19) $udp19




$ns connect $udp0 $udp(4)
$ns connect $udp(4) $udp(10)
$ns connect $udp(10) $udp14
$ns connect $udp2 $udp12
set key [string repeat - 16]

Agent/UDP instproc process_data {size data} {
    global ns
    global udp0
    global udp
    global key 
    $self instvar node_
        puts "Received $data"
    package require aes 
    set dedata [aes::aes -dir decrypt -key $key $data]
    	    
    puts "Decrypted data $dedata"
    set last [string range $dedata 13 end]
    puts "Last three letters: $last"
    if {$last=="xxx"} { 
    set time 0.05
    set now [$ns now]
    $ns at [expr $now+$time] "$udp([$node_ node-addr]) send 500 $data" 
    } else {
    puts "$dedata recieved from a false node hence dropped"
    }
}

Agent/MYUDP instproc process_data {size data} {
    global ns
    global udp
    global udp1
    global key 
    $self instvar node_
    
    puts "Recieved2 $data"
 	puts "[$node_ node-addr] received {$data}"
    
 
    package require aes 
    set dedata [aes::aes -dir decrypt -key $key $data]
    	    
    puts "Decrypted data $dedata"
    set dedata2 [string replace $dedata 13 15 yyy]
    set dedata3 [string replace $dedata2 0 2 abc]
    $ns trace-annotate "[$node_ node-addr] received {$data}"
    puts "Decrypted data3 $dedata3"
package require aes
set endata [aes::aes -dir encrypt -key $key $dedata3]
set time 0.05
    set now [$ns now]
    puts "In myudp recieve $endata" 
    $ns at [expr $now+$time] "$udp(10) send 500 $endata" 

}

 

 
proc attach-CBR-traffic { node sink size interval } {

   set ns [Simulator instance]

   set cbr [new Agent/CBR]
   $ns attach-agent $node $cbr
   $cbr set packetSize_ $size
   $cbr set interval_ $interval
 

   $ns connect $cbr $sink
   return $cbr
  }


#set cbr2112 [attach-CBR-traffic $n(0) $sink11 800 .03]
#set cbr2113 [attach-CBR-traffic $n(4) $sink2 800 .03]

  

#$ns at 0.1 "$cbr2112 start"
#$ns at 0.2 "$cbr2113 start"




set fulldata {sixteencharacxxx}

puts "Full data is $fulldata"
package require aes
set endata [aes::aes -dir encrypt -key $key $fulldata]

$ns at 0.3 "$udp0 send 500 $endata"
#$ns at 0.4 "$udp(4) send 500 $endata"
#$ns at 0.6 "$udp(10) send 500 $endata"

$ns at 8.0 "finish"


puts "Start of simulation.."
$ns run

 

