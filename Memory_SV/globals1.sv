//globals.sv: global defines
package globals1;

 typedef enum {WRITE, READ} trans; 
 typedef enum {PATRN_AA, PATRN_55, WALK_1, WALK_0} vec_pattern;

 `define awidth 16
 `define dwidth 32
 `define no_of_trans 100
 `define timeout 1000000

 // class transaction
 class transaction #(addr_width=`awidth, data_width=`dwidth);
  rand bit [addr_width-1:0] addr;
  rand bit [data_width-1:0] wr_data;
       bit [data_width-1:0] rd_data;
  rand trans trans_type;

  constraint addr_constr {addr[1:0] == 0;}
 endclass

endpackage

