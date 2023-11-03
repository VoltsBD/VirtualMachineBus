`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: DLSU Manila
// Engineer: Voltaire B. Dupo
// 
// Create Date: 03.11.2023 09:14:05
// Design Name: Tie UP for VBMA
// Module Name: TUVBMA
// Project Name: VMBA
// Target Devices: 
// Tool Versions: Vivado 2018.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TUVBMA(
    input wire rst,
    input wire clk,
    input wire [7:0] R3CTRL, // DATALINES for CONTROL PINS OE,LD,ETC
    input wire [7:0] R4DATA, // DATA BUS TO BRING DATA to PPI
    input wire [7:0] R5ADDR, // UPPER NIBBLE is for OUTPUT MUX and LOWER NIBBLE is for OUTPUT DEMUX
    output wire [7:0] R3OUTCRL, // DATALINES for CONTROL PINS OE,LD,ETC
    output wire [7:0] DTCMDONE,  // INPUT 1 DEVICE CMD or DATA
    output wire [7:0] DTCMDTWO,  // INPUT 2 DEVICE CMD or DATA
    output wire [7:0] DTCMDTHREE, // INPUT 3 DEVICE CMD or DATA
    output wire [7:0] DTCMDFOUR,  // INPUT 4 DEVICE CMD or DATA
    input wire [7:0] DTINONE,    // DATA OUTPUT from DEVICE 1
    input wire [7:0] DTW,    // DATA OUTPUT from DEVICE 2
    input wire [7:0] DTINTHREE,    // DATA OUTPUT from DEVICE 3
    input wire [7:0] DTINFOUR,    // DATA OUTPUT from DEVICE 4
    output wire [7:0] AMBAOUT,     // MUX BUS TO PROCESSOR
    output wire [3:0] CLKBUS,       // MULTIPLE CLOCK
    output wire [3:0] RSTBUS
    );

VMBA U1 (rst,clk,R3CTRL,R4DATA,R5ADDR,R3OUTCRL,DTCMDONE,DTCMDTWO,DTCMDTHREE,DTCMDFOUR,DTINONE,DTW,DTINTHREE,DTINFOUR,AMBAOUT,CLKBUS,RSTBUS);

endmodule
