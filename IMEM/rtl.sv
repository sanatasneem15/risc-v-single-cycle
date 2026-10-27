
module imem(
    input  logic [31:0] a,
    output logic [31:0] rd
);

    logic [31:0] RAM [0:63];

    initial begin
        $readmemh("imem.txt", RAM);
    end

    always_comb begin
        rd = RAM[a[7:2]];
    end

endmodule

