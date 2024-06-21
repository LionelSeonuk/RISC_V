// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun 17 22:22:02 2024
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
