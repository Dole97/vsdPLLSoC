/* Generated by Yosys 0.9+3621 (git sha1 84e9fa7, gcc 8.3.1 -fPIC -Os) */

module vsdPLLSoC(ref_clk, b_cp, b_vco, vco_in, en_cp, en_vco, VCCD, VSSD, VDDIO, VSSIO, VDDA, VSSA, gpio_3, gpio_2, gpio_1, gpio_0, clk);
  input VCCD;
  input VDDA;
  input VDDIO;
  input VSSA;
  input VSSD;
  input VSSIO;
  wire b_0_pll;
  wire b_1_pll;
  wire b_2_pll;
  wire b_3_pll;
  output b_cp;
  wire b_cp_pll;
  output b_vco;
  wire b_vco_pll;
  output clk;
  wire clk_pll;
  input en_cp;
  wire en_cp_pll;
  input en_vco;
  wire en_vco_pll;
  input gpio_0;
  input gpio_1;
  input gpio_2;
  input gpio_3;
  wire porb;
  input ref_clk;
  wire ref_clk_pll;
  input vco_in;
  wire vco_in_pll;
  chip_io PADFRAME (
    .B_0_pll(b_0_pll),
    .B_1_pll(b_1_pll),
    .B_2_pll(b_2_pll),
    .B_3_pll(b_3_pll),
    .B_CP(b_cp),
    .B_CP_pll(b_cp_pll),
    .B_VCO(b_vco),
    .B_VCO_pll(b_vco_pll),
    .CLK(clk),
    .CLK_pll(clk_pll),
    .EN_CP(en_cp),
    .EN_CP_pll(en_cp_pll),
    .EN_VCO(en_vco),
    .EN_VCO_pll(en_vco_pll),
    .GPIO_0(gpio_0),
    .GPIO_1(gpio_1),
    .GPIO_2(gpio_2),
    .GPIO_3(gpio_3),
    .PORB(porb),
    .REF_CLK(ref_clk),
    .REF_CLK_pll(ref_clk_pll),
    .VCO_IN(vco_in),
    .VCO_IN_pll(vco_in_pll),
    .vccd(VCCD),
    .vdda(VDDA),
    .vddio(VDDIO),
    .vssa(VSSA),
    .vssd(VSSD),
    .vssio(VSSIO)
  );
  avsdpll_1v8 PLL (
    .CLK(clk_pll),
    .ENb_CP(en_cp_pll),
    .ENb_VCO(en_vco_pll),
    .GND(VSSIO),
    .GND2(VSSA),
    .REF(ref_clk_pll),
    .VCO_IN(vco_in_pll),
    .VDD(VDDA),
    .VDD2(VDDIO),
    .VDD3(VDDA)
  );
  simple_por POR (
    .porb_h(porb),
    .vdd1v8(VCCD),
    .vdd3v3(VDDIO),
    .vss(VSSIO)
  );
endmodule