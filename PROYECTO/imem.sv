module imem(input logic [31:0] a,
output logic [31:0] rd);
logic [31:0] RAM[63:0];
logic clk;
initial

//CAMBIAR DIRECCION DEL ARCHIVO ========================
$readmemh("E:/Utilities/Documents/Github/jgonzalez_digital_design_lab_2023/PROYECTO/memfile_median_modified.dat",RAM);
//CAMBIAR DIRECCION DEL ARCHIVO ========================

assign rd = RAM[a[31:2]]; // word aligned
endmodule
