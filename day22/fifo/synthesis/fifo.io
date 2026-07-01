(globals
        version = 3
        io_order = clockwise
        space = 2
        total_edge = 2
)
(iopad
        (topleft
                (inst name="CornerCell1" cell=padIORINGCORNER offset=0 orientation = R180 place_status = fixed))

        (left    
                (inst name="in1" cell=PADDI place_status = fixed)
                (inst name="in2" cell=PADDI place_status = fixed)
   		(inst name="in3" cell=PADDI place_status = fixed)
		(inst name="in4" cell=PADDI place_status = fixed)
		(inst name="in5" cell=PADDI place_status = fixed)
		(inst name="in6" cell=PADDI place_status = fixed)
                
         )   
         (topright
                (inst name="CornerCell2" cell=padIORINGCORNER offset=0 orientation = R90 place_status = fixed))

         (top    
           
                (inst name="in7" cell=PADDO place_status = fixed)
                (inst name="in8" cell=PADDO place_status = fixed)  
 		(inst name="in9" cell=PADDO place_status = fixed)  
                (inst name="in10" cell=PADDO place_status = fixed)
		(inst name="in11" cell=PADDO place_status = fixed)
		(inst name="in12" cell=PADDO place_status = fixed)
		(inst name="in13" cell=PADDO place_status = fixed)
		
         )

         (bottomright
                (inst name="CornerCell3" cell=padIORINGCORNER offset=0 orientation = R0 place_status = fixed))

         (right 
		(inst name="in14" cell=PADDO place_status = fixed)
                (inst name="out1" cell=PADDO place_status = fixed)                 
                (inst name="out2" cell=PADDO place_status = fixed)
		(inst name="out3" cell=PADDO place_status = fixed)
		(inst name="out4" cell=PADDO place_status = fixed)
		(inst name="out5" cell=PADDO place_status = fixed)
             )
         (bottomleft
                (inst name="CornerCell4" cell=padIORINGCORNER offset=0 orientation = R270 place_status = fixed))

         (bottom 
		(inst name="out6" cell=PADDO place_status = fixed)
                (inst name="out7" cell=PADDO place_status = fixed)
                (inst name="out8" cell=PADDO place_status = fixed)
                (inst name="out9" cell=PADDO place_status = fixed)
		(inst name="out10" cell=PADDO place_status = fixed)
		(inst name="POWER_VDD01" cell=PADVDD place_status = fixed)
                (inst name="POWER_VSS01" cell=PADVSS place_status = fixed)      
              )

