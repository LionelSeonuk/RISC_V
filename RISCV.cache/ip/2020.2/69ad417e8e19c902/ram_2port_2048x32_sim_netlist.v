// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun 17 22:47:57 2024
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
