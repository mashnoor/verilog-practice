`timescale 1ps/1ps
module tristate_buff (
    input in, input en, output out
);

    bufif1(out, in, en);
    

endmodule