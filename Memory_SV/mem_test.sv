//mem_test.sv : test
program mem_test (mem_if mem_if_t);
  // mbox for gen 2 driver constrcution
    mailbox gen2drv=new(); 
  // memory gen construction
   mem_trans_gen trans_gen=new(gen2drv);
  // memory driver construction
   mem_trans_drv trans_drv=new(gen2drv,mem_if_t);

// mbox for monitor 2 scoreboard
  mailbox mon2sb=new();
  // memory monitor construction 
  mem_trans_sb trans_sb=new(mon2sb);
  // memory scoreboard construction 
   mem_trans_mon trans_mon=new(mon2sb,mem_if_t); 

// tasks call for each test
 initial begin 
    // Test 1- Single wr and read, 
   // Test 2 - Multi wr and read 
     trans_gen.run("multi_wr_rd"); 
    // Test 3 - All locations wr and read ,
    // Test 4 - All locations wr and read with pattern, 
    // Test 5 - Walking 1's and  0s
    fork
     // run driver  
      trans_drv.run;
 // run monitor
      trans_mon.run;
     //run scoreboard
     trans_sb.run;  
   join 
 end
 // timeout for tests
 initial begin
     #`timeout; 
trans_sb.data_check; 
$exit;
 end
endprogram

