// Dynamic Array
module d_array();
 integer d_array[];
 initial
   begin
     d_array = new[4];
     $display ("Initial ", d_array.size);
     d_array[1] = 10;
     d_array[3] = 100;
     d_array = new[8] (d_array);
     d_array[7] = 88;
     $display ("Resized :  d_size=%0d, d_array[3]=%0d, d_array[7]=%0d ", d_array.size, d_array[3], d_array[7]);
     d_array = new[2] (d_array);
     $display ("Resized : d_size=%0d, d_array[3]=%0d, d_array[7]=%0d ", d_array.size, d_array[3], d_array[7]);
     d_array.delete();
     $display ("Delete", d_array.size);
  end
endmodule
