*******************************************************************************
****** NAND schematic GATES  <vs>  NAND layout GATES
*******************************************************************************

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(nmos) MOS                                        2       2           0       0
(pmos) MOS                                        2       2           0       2*
(nmos:SerMos2#1) MosBlk                           -       -           1       1
(pmos:ParMos2#1, -) MosBlk                        -       -           1       -*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(nmos) MOS                                        0       0           0       0
(pmos) MOS                                        0       2*          0       2*
(nmos:SerMos2#1) MosBlk                           1       1           0       0
(pmos:ParMos2#1, -) MosBlk                        1       -*          1       -*
                                             ------  ------      ------  ------
Total                                             2       3           1       2

Match Statistics for Nets                         5       6           0       1

=========================================================================[NAND]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  A
S       1   of nmos:SerMos2#1 {IN1 IN2}
S      *1   of pmos:ParMos2#1 {IN1 IN2}

Layout Net:  A
L      *1   of pmos G
L       1   of nmos:SerMos2#1 {IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  B
S       1   of nmos:SerMos2#1 {IN1 IN2}
S      *1   of pmos:ParMos2#1 {IN1 IN2}

Layout Net:  B
L      *1   of pmos G
L       1   of nmos:SerMos2#1 {IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 3)
Schematic Net:  Out
S       1   of nmos:SerMos2#1 {OUT OUT2}
S      *1   of pmos:ParMos2#1 {OUT OUT2}

Layout Net:  Out
L      *2   of pmos {D S}
L       1   of nmos:SerMos2#1 {OUT OUT2}

=========================================================================[NAND]
====== Unbound Pin ============================================================
===============================================================================

S VSS
S VDD

=========================================================================[NAND]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC8

=========================================================================[NAND]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  VDD
S      *1   of pmos:ParMos2#1 {OUT OUT2}
S      *1   of pmos:ParMos2#1 TERM4

Layout Net:  avC7
L      *1   of pmos {D S}

=========================================================================[NAND]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?Out
S       1   of nmos:SerMos2#1 {OUT OUT2}
S       1   of pmos:ParMos2#1 {OUT OUT2}
S
S ?A ?B
S (total 2) with:
S       1   of nmos:SerMos2#1 {IN1 IN2}
S       1   of pmos:ParMos2#1 {IN1 IN2}
S
S ?VDD
S       1   of pmos:ParMos2#1 {OUT OUT2}
S       1   of pmos:ParMos2#1 TERM4

=========================================================================[NAND]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC7
L       1   of pmos {D S}
L
L ?avC8
L       1   of pmos {D S}
L       2   of pmos B
L
L ?Out
L       2   of pmos {D S}
L       1   of nmos:SerMos2#1 {OUT OUT2}
L
L ?A ?B
L (total 2) with:
L       1   of pmos G
L       1   of nmos:SerMos2#1 {IN1 IN2}

=========================================================================[NAND]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I##6  pmos:ParMos2#1

S Pin        Net
S ---        ---
S OUT        VDD
S OUT2       Out
S TERM4      VDD
S IN1        B
S IN2        A

=========================================================================[NAND]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    avD27_1  pmos

L Pin        Net
L ---        ---
L D          VDD
L G          A
L S          Out
L B          ?avC8

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    avD27_2  pmos

L Pin        Net
L ---        ---
L D          Out
L G          B
L S          ?avC8
L B          ?avC8

=========================================================================[NAND]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 3          3         Bad Initial Net Bindings
 1          1         Bad Matched Nets
 -          1         Unmatched Internal Nets
 1          2         Unmatched Instances
 2          -         Unbound Pin

