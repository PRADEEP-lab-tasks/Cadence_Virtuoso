*******************************************************************************
****** Xor schematic Analog90  <vs>  Xor layout Analog90
*******************************************************************************

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(nmos1v) MOS                                      6       6           6       2*
(pmos1v) MOS                                      6       6           2       2
(pmos1v:ParMos2#1) MosBlk                         -       -           2       2
(-, nmos1v:SerMos2#1) MosBlk                      -       -           -       2*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(nmos1v) MOS                                      6       2*          4       0*
(pmos1v) MOS                                      2       2           0       0
(pmos1v:ParMos2#1) MosBlk                         2       2           0       0
(-, nmos1v:SerMos2#1) MosBlk                      -       2*          -       2*
                                             ------  ------      ------  ------
Total                                            10       8           4       2

Match Statistics for Nets                        10       8           2       0

==========================================================================[Xor]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  A
S       1   of pmos1v G
S       2   of nmos1v G
S       1   of pmos1v:ParMos2#1 {IN1 IN2}

Layout Net:  A
L       1   of pmos1v G
L      *1   of nmos1v G
L       1   of pmos1v:ParMos2#1 {IN1 IN2}
L      *1   of nmos1v:SerMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  B
S       1   of pmos1v G
S       2   of nmos1v G
S       1   of pmos1v:ParMos2#1 {IN1 IN2}

Layout Net:  B
L       1   of pmos1v G
L      *1   of nmos1v G
L       1   of pmos1v:ParMos2#1 {IN1 IN2}
L      *1   of nmos1v:SerMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 3)
Schematic Net:  Out
S      *2   of nmos1v {D S}
S       1   of pmos1v:ParMos2#1 {OUT OUT2}

Layout Net:  Out
L       1   of pmos1v:ParMos2#1 {OUT OUT2}
L      *2   of nmos1v:SerMos2#1 ?{OUT OUT2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 4)
Schematic Net:  Vss
S       4   of nmos1v {D S}
S       4   of nmos1v B

Layout Net:  Vss
L      *2   of nmos1v {D S}
L      *2   of nmos1v B
L      *2   of nmos1v:SerMos2#1 ?{OUT OUT2}
L      *2   of nmos1v:SerMos2#1 ?TERM4

==========================================================================[Xor]
====== Unmatched Internal Nets ================================================
===============================================================================

S ?net1
S ?net2


==========================================================================[Xor]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net5
S       1   of pmos1v {D S}
S       1   of nmos1v {D S}
S      *1   of nmos1v G
S       1   of pmos1v:ParMos2#1 {IN1 IN2}

Layout Net:  avC7
L       1   of pmos1v {D S}
L       1   of nmos1v {D S}
L       1   of pmos1v:ParMos2#1 {IN1 IN2}
L      *1   of nmos1v:SerMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net4
S       1   of pmos1v {D S}
S       1   of nmos1v {D S}
S      *1   of nmos1v G
S       1   of pmos1v:ParMos2#1 {IN1 IN2}

Layout Net:  avC6
L       1   of pmos1v {D S}
L       1   of nmos1v {D S}
L       1   of pmos1v:ParMos2#1 {IN1 IN2}
L      *1   of nmos1v:SerMos2#1 ?{IN1 IN2}

==========================================================================[Xor]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?net1 ?net2
S (total 2) with:
S       2   of nmos1v {D S}
S       1   of nmos1v B
S
S ?Out
S       2   of nmos1v {D S}
S       1   of pmos1v:ParMos2#1 {OUT OUT2}
S
S ?Vss
S       4   of nmos1v {D S}
S       4   of nmos1v B
S
S ?A ?B
S (total 2) with:
S       1   of pmos1v G
S       2   of nmos1v G
S       1   of pmos1v:ParMos2#1 {IN1 IN2}
S
S ?net5 ?net4
S (total 2) with:
S       1   of pmos1v {D S}
S       1   of nmos1v {D S}
S       1   of nmos1v G
S       1   of pmos1v:ParMos2#1 {IN1 IN2}

==========================================================================[Xor]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?Out
L       1   of pmos1v:ParMos2#1 {OUT OUT2}
L       2   of nmos1v:SerMos2#1 ?{OUT OUT2}
L
L ?avC7 ?avC6
L (total 2) with:
L       1   of pmos1v {D S}
L       1   of nmos1v {D S}
L       1   of pmos1v:ParMos2#1 {IN1 IN2}
L       1   of nmos1v:SerMos2#1 ?{IN1 IN2}
L
L ?A ?B
L (total 2) with:
L       1   of pmos1v G
L       1   of nmos1v G
L       1   of pmos1v:ParMos2#1 {IN1 IN2}
L       1   of nmos1v:SerMos2#1 ?{IN1 IN2}
L
L ?Vss
L       2   of nmos1v {D S}
L       2   of nmos1v B
L       2   of nmos1v:SerMos2#1 ?{OUT OUT2}
L       2   of nmos1v:SerMos2#1 ?TERM4

==========================================================================[Xor]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: NM3  nmos1v

S Pin        Net
S ---        ---
S D          ?net1
S G          net5
S S          Vss
S B          Vss

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: NM2  nmos1v

S Pin        Net
S ---        ---
S D          ?net2
S G          B
S S          Vss
S B          Vss

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: NM1  nmos1v

S Pin        Net
S ---        ---
S D          Out
S G          net4
S S          ?net1
S B          ?net1

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 4)
Schematic Instance: NM0  nmos1v

S Pin        Net
S ---        ---
S D          Out
S G          A
S S          ?net2
S B          ?net2

==========================================================================[Xor]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##13  nmos1v:SerMos2#1

L Pin        Net
L ---        ---
L OUT        Vss
L OUT2       Out
L TERM4      Vss
L IN1        net5
L IN2        net4

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    I##14  nmos1v:SerMos2#1

L Pin        Net
L ---        ---
L OUT        Vss
L OUT2       Out
L TERM4      Vss
L IN1        B
L IN2        A

==========================================================================[Xor]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 4          4         Bad Initial Net Bindings
 2          2         Bad Matched Nets
 2          -         Unmatched Internal Nets
 4          2         Unmatched Instances

