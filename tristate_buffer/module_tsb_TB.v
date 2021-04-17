`timescale 1ns/1ns
module tristate_TB ();

    reg in, en;
    wire out;
    tristate_buff mytsb(.in(in), .en(en), .out(out));
    always #5 in=~in;

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(1, tristate_TB);
        in=0;
        en=0;
        #20
        en=1;
        #20
        en=0;
        #20
        $finish;
    end

endmodule