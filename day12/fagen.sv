class generator;

transaction trans;

mailbox gen2drv;

function new(mailbox mbox);
    gen2drv = mbox;
endfunction

task run();
    repeat(10)
    begin
        trans = new();

        assert(trans.randomize());

        gen2drv.put(trans);

        $display("GEN : a=%0b b=%0b c=%0b",
                  trans.a,trans.b,trans.c);
    end
endtask

endclass
