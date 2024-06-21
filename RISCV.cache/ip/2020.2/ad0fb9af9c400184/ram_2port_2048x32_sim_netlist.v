// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun 17 22:43:00 2024
// Host        : DESKTOP-S3MHGL2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_2port_2048x32_sim_netlist.v
// Design      : ram_2port_2048x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_2port_2048x32,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_2port_2048x32.mem" *) 
  (* C_INIT_FILE_NAME = "ram_2port_2048x32.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48336)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
