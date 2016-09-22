#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x19d4dd0 .scope module, "demomrgan_test" "demomrgan_test" 2 3;
 .timescale 0 0;
v0x19e6eb0_0 .var "A", 0 0;
v0x19e6f80_0 .net "AorB", 0 0, L_0x19e71c0; 1 drivers
v0x19e7030_0 .var "B", 0 0;
v0x19e70e0_0 .net "nAornB", 0 0, L_0x19e7310; 1 drivers
S_0x19d4ec0 .scope module, "dut" "demorgan" 2 9, 3 3, S_0x19d4dd0;
 .timescale 0 0;
L_0x19e71c0 .functor OR 1, v0x19e6eb0_0, v0x19e7030_0, C4<0>, C4<0>;
L_0x19e7310 .functor NOT 1, L_0x19e71c0, C4<0>, C4<0>, C4<0>;
v0x19d4fb0_0 .net "A", 0 0, v0x19e6eb0_0; 1 drivers
v0x19e6cc0_0 .alias "AorB", 0 0, v0x19e6f80_0;
v0x19e6d60_0 .net "B", 0 0, v0x19e7030_0; 1 drivers
v0x19e6e00_0 .alias "nAornB", 0 0, v0x19e70e0_0;
    .scope S_0x19d4dd0;
T_0 ;
    %vpi_call 2 13 "$display", "A B | A and B | ~(A+B)";
    %set/v v0x19e6eb0_0, 0, 1;
    %set/v v0x19e7030_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 15 "$display", "%b %b |    %b    |    %b  ", v0x19e6eb0_0, v0x19e7030_0, v0x19e6f80_0, v0x19e70e0_0;
    %set/v v0x19e6eb0_0, 0, 1;
    %set/v v0x19e7030_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 17 "$display", "%b %b |    %b    |    %b  ", v0x19e6eb0_0, v0x19e7030_0, v0x19e6f80_0, v0x19e70e0_0;
    %set/v v0x19e6eb0_0, 1, 1;
    %set/v v0x19e7030_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 19 "$display", "%b %b |    %b    |    %b  ", v0x19e6eb0_0, v0x19e7030_0, v0x19e6f80_0, v0x19e70e0_0;
    %set/v v0x19e6eb0_0, 1, 1;
    %set/v v0x19e7030_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 21 "$display", "%b %b |    %b    |    %b  ", v0x19e6eb0_0, v0x19e7030_0, v0x19e6f80_0, v0x19e70e0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
