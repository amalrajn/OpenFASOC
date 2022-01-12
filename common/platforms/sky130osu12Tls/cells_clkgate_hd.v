module OPENROAD_CLKGATE (CK, E, GCK);
  input CK;
  input E;
  output GCK;

`ifdef OPENROAD_CLKGATE

sky130_osu_sc_12T_ls__pcgate_1 latch (.CK (CK), .E(E), .ECK(GCK));

`else

assign GCK = CK;

`endif

endmodule
