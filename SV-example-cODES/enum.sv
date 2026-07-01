enum integer {IDLE, ACTIVE, DATA_XFTER, ERROR}  state, next;  // IDLE =0, ACTIVE=1, DATA_XFER=2, ERROR=3.
//enum integer {IDLE=4, ACTIVE, DATA_XFTER, ERROR}  state, next;  // IDLE =4, ACTIVE=5, DATA_XFER=6, ERROR=7.
typedef enum {NO, YES} boolean;
typedef enum {yellow, black, blue, red, white, green} colors; //defining new data types as enumerated types

module test;
	logic clk;
     boolean myvar;
      colors prev_col;
      colors next_col;
      always @(prev_col) begin
          next_col = prev_col.next();
       end
                                                                                
       always @(posedge clk) begin
           prev_col <= next_col;
       end
endmodule
