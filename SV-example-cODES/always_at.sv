//always_@* example
module always_at_star;
  logic a, b, c, always_d;
 
  function logic my_func(input logic m_c);
    my_func = a | b | m_c;
  endfunction
 
  always @*
    always_d = my_func(c);
 
  initial begin
    $monitor("@%0t: a = %d, b = %d, c = %d, always_d = %d", $time, a, b, c, always_d);
  end
  
  initial begin
    a = 0;    b = 0;    c = 0;
    #10 a = 1;
    #10 b = 1;
    #10 c = 1;
  end
endmodule
