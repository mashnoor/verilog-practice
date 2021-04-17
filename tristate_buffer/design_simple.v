`timescale 1ps/1ps
module tristate_buff (
    input in, input en, output reg out
);

    always @(in, en) begin
        if(en)
           out=in;
        else
           out=1'bz;
    end

endmodule