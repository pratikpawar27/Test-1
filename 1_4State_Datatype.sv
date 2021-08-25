//********************************************
// (c) SION Semiconductors (P) Ltd, Bangalore
// All rights reserved.
//********************************************
// Filename    : 1_4State_Datatype.sv
// Description : Initializing 4 Stste Data Type
//              (logic, integer, real, shortreal)
//********************************************

module State4_datatype();

//Declaration of Data type
 logic [31:0]a;
 integer b;
 real c;
 shortreal d;

 initial begin
  $display ("@ %gns a = %b", $time, a);
  a = 1; // Initializing Value '1' for variable 
  $display ("@ %gns a = %b", $time, a);
 
  #1 b = 1; // Intiger Data type Default 32bit will take
  $display ("@ %gns b = %b", $time, b);

 #1 b = '1;  // All 32 bits Fill with '1'
  $display ("@ %gns b = %b", $time, b);
 
  #1 c = 1.5; // Display real Values using '%e'
  $display ("@ %gns c = %e", $time, c);  
  
  #1 c=25;
  #1 d = shortreal'(c); // Casting data type from real to shortreal
  $display ("@ %gns d = %e", $time, d);
  
  #1 $finish;
 end

endmodule
