
v
Command: %s
53*	vivadotcl2E
1synth_design -top top_ip -part xcku5p-ffvb676-2-e2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcku5p2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcku5p2default:defaultZ17-349h px? 
Y
Loading part %s157*device2&
xcku5p-ffvb676-2-e2default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1556.137 ; gain = 99.078
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top_ip2default:default2
 2default:default2o
YD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/top_ip.v2default:default2
212default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter CHID_NUM bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter LENGTH_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter NUM_PKT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter D_W bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter PKT_CH_W bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2 
ctrl_stt_reg2default:default2
 2default:default2u
_D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/ctrl_stt_reg.v2default:default2
212default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
decoder_4to162default:default2
 2default:default2v
`D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/decoder_4to16.v2default:default2
212default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter tmp bound to: 16'b0000000000000001 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
decoder_4to162default:default2
 2default:default2
12default:default2
12default:default2v
`D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/decoder_4to16.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
encoder_16to12default:default2
 2default:default2v
`D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_16to1.v2default:default2
202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
encoder_16to42default:default2
 2default:default2v
`D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_16to4.v2default:default2
202default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
encoder_16to42default:default2
 2default:default2
22default:default2
12default:default2v
`D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_16to4.v2default:default2
202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
encoder_4to22default:default2
 2default:default2u
_D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_4to2.v2default:default2
202default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
encoder_4to22default:default2
 2default:default2
32default:default2
12default:default2u
_D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_4to2.v2default:default2
202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
encoder_2to12default:default2
 2default:default2u
_D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_2to1.v2default:default2
202default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
encoder_2to12default:default2
 2default:default2
42default:default2
12default:default2u
_D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_2to1.v2default:default2
202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
encoder_16to12default:default2
 2default:default2
52default:default2
12default:default2v
`D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/encoder_16to1.v2default:default2
202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
ctrl_stt_reg2default:default2
 2default:default2
62default:default2
12default:default2u
_D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/ctrl_stt_reg.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
bin_to_gray2default:default2
 2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/bin_to_gray.v2default:default2
212default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bin_to_gray2default:default2
 2default:default2
72default:default2
12default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/bin_to_gray.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
bin_to_gray__parameterized02default:default2
 2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/bin_to_gray.v2default:default2
212default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
bin_to_gray__parameterized02default:default2
 2default:default2
72default:default2
12default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/bin_to_gray.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
sync2default:default2
 2default:default2m
WD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/sync.v2default:default2
212default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sync2default:default2
 2default:default2
82default:default2
12default:default2m
WD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/sync.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
sync__parameterized02default:default2
 2default:default2m
WD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/sync.v2default:default2
212default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
sync__parameterized02default:default2
 2default:default2
82default:default2
12default:default2m
WD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/sync.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
sync__parameterized12default:default2
 2default:default2m
WD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/sync.v2default:default2
212default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
sync__parameterized12default:default2
 2default:default2
82default:default2
12default:default2m
WD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/sync.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
gray_to_bin2default:default2
 2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/gray_to_bin.v2default:default2
212default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gray_to_bin2default:default2
 2default:default2
92default:default2
12default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/gray_to_bin.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
gray_to_bin__parameterized02default:default2
 2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/gray_to_bin.v2default:default2
212default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
gray_to_bin__parameterized02default:default2
 2default:default2
92default:default2
12default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/gray_to_bin.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
transmitter2default:default2
 2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
212default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter CHID_NUM bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter LENGTH_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter NUM_PKT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter D_W bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter PKT_CH_W bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter PAYLOAD_W bound to: 1500 - type: integer 
2default:defaulth p
x
? 
z
%s
*synth2b
N	Parameter DA bound to: 48'b101010101010101010101010101010101010101010101010 
2default:defaulth p
x
? 
z
%s
*synth2b
N	Parameter SA bound to: 48'b010101010101010101010101010101010101010101010101 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter VLAN bound to: 286331153 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter TYPE bound to: 8738 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s0 bound to: 3'b000 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s1 bound to: 3'b001 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s2 bound to: 3'b010 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s3 bound to: 3'b011 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s4 bound to: 3'b100 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s5 bound to: 3'b101 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1632default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
transmitter2default:default2
 2default:default2
102default:default2
12default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
receiver2default:default2
 2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
212default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter CHID_NUM bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter LENGTH_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter NUM_PKT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter D_W bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter PKT_CH_W bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter PAYLOAD_W bound to: 1500 - type: integer 
2default:defaulth p
x
? 
z
%s
*synth2b
N	Parameter DA bound to: 48'b101010101010101010101010101010101010101010101010 
2default:defaulth p
x
? 
z
%s
*synth2b
N	Parameter SA bound to: 48'b010101010101010101010101010101010101010101010101 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter VLAN bound to: 286331153 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter TYPE bound to: 8738 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s0 bound to: 3'b000 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s1 bound to: 3'b001 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s2 bound to: 3'b010 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s3 bound to: 3'b011 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s4 bound to: 3'b100 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s5 bound to: 3'b101 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter s6 bound to: 3'b110 
2default:defaulth p
x
? 
?
display: %s251*oasys2?
?
DATA_FROM_TX=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx == DATA_SAMPLE=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2192default:default8@Z8-251h px? 
?
display: %s251*oasys2
Pass2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2202default:default8@Z8-251h px? 
?
display: %s251*oasys2?
?
DATA_FROM_TX=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx != DATA_SAMPLE=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2242default:default8@Z8-251h px? 
?
display: %s251*oasys2
Error2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2252default:default8@Z8-251h px? 
?
display: %s251*oasys2?
?
DATA_FROM_TX=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx == DATA_SAMPLE=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2372default:default8@Z8-251h px? 
?
display: %s251*oasys2
Pass2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2382default:default8@Z8-251h px? 
?
display: %s251*oasys2?
?
DATA_FROM_TX=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx != DATA_SAMPLE=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2422default:default8@Z8-251h px? 
?
display: %s251*oasys2
Error2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2432default:default8@Z8-251h px? 
?
display: %s251*oasys26
"
LENGTH_FROM_TX=x == LENGTH_USER=x2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2512default:default8@Z8-251h px? 
?
display: %s251*oasys2
Pass2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2522default:default8@Z8-251h px? 
?
display: %s251*oasys26
"
LENGTH FROM_TX=x != LENGTH_USER=x2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2562default:default8@Z8-251h px? 
?
display: %s251*oasys2
Error2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
2572default:default8@Z8-251h px? 
?
-case statement is not full and has no default155*oasys2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1662default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
receiver2default:default2
 2default:default2
112default:default2
12default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
212default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top_ip2default:default2
 2default:default2
122default:default2
12default:default2o
YD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/top_ip.v2default:default2
212default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys2!
encoder_16to42default:default2
d_in[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
encoder_2to12default:default2
d_in[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
encoder_4to22default:default2
d_in[0]2default:defaultZ8-3331h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2054.824 ; gain = 597.766
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:39 ; elapsed = 00:00:42 . Memory (MB): peak = 2054.824 ; gain = 597.766
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:39 ; elapsed = 00:00:42 . Memory (MB): peak = 2054.824 ; gain = 597.766
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:052default:default2
00:00:042default:default2
2107.4532default:default2
4.7852default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2y
cD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/constrs_1/new/constrs_top_ip.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2y
cD:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/constrs_1/new/constrs_top_ip.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0392default:default2
2696.7112default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:012default:default2 
00:00:00.8822default:default2
2698.9842default:default2
2.2732default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:01:34 ; elapsed = 00:01:38 . Memory (MB): peak = 2698.984 ; gain = 1241.926
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Loading part: xcku5p-ffvb676-2-e
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:01:34 ; elapsed = 00:01:38 . Memory (MB): peak = 2698.984 ; gain = 1241.926
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:34 ; elapsed = 00:01:38 . Memory (MB): peak = 2698.984 ; gain = 1241.926
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2
transmitter2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2
receiver2default:defaultZ8-802h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1517]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1516]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1515]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1514]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1513]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1512]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1511]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1510]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1509]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1508]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1507]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1506]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1505]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1504]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1503]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1502]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1501]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1500]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1499]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1498]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1497]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1496]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1495]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1494]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1493]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1492]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1491]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1490]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1489]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1488]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1487]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1486]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1485]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1484]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1483]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1482]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1481]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1480]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1479]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1478]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1477]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1476]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1475]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1474]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1473]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1472]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1471]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1470]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1469]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1468]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1467]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1466]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1465]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1464]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1463]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1462]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1461]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1460]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1459]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1458]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1457]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1456]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1455]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1454]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1453]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1452]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1451]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1450]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1449]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1448]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1447]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1446]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1445]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1444]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1443]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1442]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1441]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1440]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1439]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1438]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1437]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1436]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1435]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1434]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1433]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1432]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1431]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1430]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1429]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1428]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1427]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1426]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1425]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1424]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1423]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1422]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1421]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1420]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1419]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_reg[1418]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1942default:default8@Z8-327h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-3272default:default2
1002default:defaultZ17-14h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                      s0 |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                      s1 |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                      s2 |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                      s3 |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                      s4 |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                      s5 |                              101 |                              101
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_reg_reg2default:default2

sequential2default:default2
receiver2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:03:18 ; elapsed = 00:03:46 . Memory (MB): peak = 2737.770 ; gain = 1280.711
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|      |RTL Partition                |Replication |Instances |
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|1     |fsm__GB0                     |           1|     48146|
2default:defaulth p
x
? 
k
%s
*synth2S
?|2     |fsm__GB1                     |           1|     43685|
2default:defaulth p
x
? 
k
%s
*synth2S
?|3     |datapath__7_transmitter__GD  |           1|    160393|
2default:defaulth p
x
? 
k
%s
*synth2S
?|4     |reg__21_transmitter          |           1|     12000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|5     |datapath__6_transmitter__GD  |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|6     |datapath__4_transmitter__GD  |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|7     |datapath__17_transmitter__GD |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|8     |transmitter__GCB5            |           1|     14280|
2default:defaulth p
x
? 
k
%s
*synth2S
?|9     |transmitter__GCB6            |           1|     26280|
2default:defaulth p
x
? 
k
%s
*synth2S
?|10    |transmitter__GCB7            |           1|       112|
2default:defaulth p
x
? 
k
%s
*synth2S
?|11    |datapath__13_transmitter__GD |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|12    |transmitter__GCB9            |           1|     24000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|13    |transmitter__GCB10           |           1|     32654|
2default:defaulth p
x
? 
k
%s
*synth2S
?|14    |transmitter__GCB11           |           1|     10200|
2default:defaulth p
x
? 
k
%s
*synth2S
?|15    |transmitter__GCB12           |           1|     10704|
2default:defaulth p
x
? 
k
%s
*synth2S
?|16    |transmitter__GCB13           |           1|     14351|
2default:defaulth p
x
? 
k
%s
*synth2S
?|17    |transmitter__GCB14           |           1|     18360|
2default:defaulth p
x
? 
k
%s
*synth2S
?|18    |transmitter__GCB15           |           1|     39967|
2default:defaulth p
x
? 
k
%s
*synth2S
?|19    |transmitter__GCB16           |           1|     24290|
2default:defaulth p
x
? 
k
%s
*synth2S
?|20    |transmitter__GCB17           |           1|     16320|
2default:defaulth p
x
? 
k
%s
*synth2S
?|21    |transmitter__GCB18           |           1|     28170|
2default:defaulth p
x
? 
k
%s
*synth2S
?|22    |transmitter__GCB19           |           1|     25729|
2default:defaulth p
x
? 
k
%s
*synth2S
?|23    |case__4682_receiver__GD      |           1|     36002|
2default:defaulth p
x
? 
k
%s
*synth2S
?|24    |case__4683_receiver__GD      |           1|     35694|
2default:defaulth p
x
? 
k
%s
*synth2S
?|25    |fsm__1__GB2                  |           1|     43769|
2default:defaulth p
x
? 
k
%s
*synth2S
?|26    |datapath__29_receiver__GD    |           1|    160393|
2default:defaulth p
x
? 
k
%s
*synth2S
?|27    |receiver__GCB1               |           1|     49941|
2default:defaulth p
x
? 
k
%s
*synth2S
?|28    |receiver__GCB2               |           1|     30600|
2default:defaulth p
x
? 
k
%s
*synth2S
?|29    |receiver__GCB3               |           1|      8664|
2default:defaulth p
x
? 
k
%s
*synth2S
?|30    |receiver__GCB4               |           1|     10200|
2default:defaulth p
x
? 
k
%s
*synth2S
?|31    |datapath__40_receiver__GD    |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|32    |receiver__GCB6               |           1|     12240|
2default:defaulth p
x
? 
k
%s
*synth2S
?|33    |receiver__GCB7               |           1|     18120|
2default:defaulth p
x
? 
k
%s
*synth2S
?|34    |datapath__28_receiver__GD    |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|35    |reg__32_receiver             |           1|     12000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|36    |datapath__26_receiver__GD    |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|37    |receiver__GCB11              |           1|     24000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|38    |receiver__GCB13              |           1|     30600|
2default:defaulth p
x
? 
k
%s
*synth2S
?|39    |receiver__GCB14              |           1|      8160|
2default:defaulth p
x
? 
k
%s
*synth2S
?|40    |receiver__GCB15              |           1|     29931|
2default:defaulth p
x
? 
k
%s
*synth2S
?|41    |receiver__GCB16              |           1|     24000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|42    |receiver__GCB17              |           1|     12916|
2default:defaulth p
x
? 
k
%s
*synth2S
?|43    |receiver__GCB18              |           1|     24418|
2default:defaulth p
x
? 
k
%s
*synth2S
?|44    |receiver__GCB19              |           1|     21933|
2default:defaulth p
x
? 
k
%s
*synth2S
?|45    |receiver__GCB20              |           1|     24480|
2default:defaulth p
x
? 
k
%s
*synth2S
?|46    |top_ip__GC0                  |           1|      1421|
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_tmp_reg_reg2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1152default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2#
payload_reg_reg2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1122default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_out_reg_reg2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1142default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_tmp_reg_reg2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1242default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2#
payload_reg_reg2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1222default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_out_reg_reg2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1232default:default8@Z8-3538h px? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 108   
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            12144 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            12000 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 31    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input  12144 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input  12144 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input  12000 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input  12000 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input  12000 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 1527  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 29    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1526  
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_tmp_reg_reg2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1152default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2#
payload_reg_reg2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1122default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_out_reg_reg2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1142default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_tmp_reg_reg2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1242default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2#
payload_reg_reg2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1222default:default8@Z8-3538h px? 
?
-Detected potentially large (wide) register %s3414*oasys2$
data_out_reg_reg2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1232default:default8@Z8-3538h px? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
@
%s
*synth2(
Module transmitter 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            12144 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            12000 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input  12144 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input  12000 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input  12000 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 1527  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
? 
=
%s
*synth2%
Module receiver 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            12144 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            12000 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input  12144 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input  12000 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input  12000 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1526  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
? 
A
%s
*synth2)
Module ctrl_stt_reg 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 12    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
C
%s
*synth2+
Module bin_to_gray__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
S
%s
*synth2;
'Module bin_to_gray__parameterized0__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
S
%s
*synth2;
'Module bin_to_gray__parameterized0__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
9
%s
*synth2!
Module sync 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
L
%s
*synth24
 Module sync__parameterized0__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
L
%s
*synth24
 Module sync__parameterized1__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
L
%s
*synth24
 Module sync__parameterized1__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
C
%s
*synth2+
Module gray_to_bin__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
S
%s
*synth2;
'Module gray_to_bin__parameterized0__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
S
%s
*synth2;
'Module gray_to_bin__parameterized0__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
P
%s
*synth28
$Module bin_to_gray__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
C
%s
*synth2+
Module bin_to_gray__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
@
%s
*synth2(
Module bin_to_gray 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
I
%s
*synth21
Module sync__parameterized1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
L
%s
*synth24
 Module sync__parameterized0__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
I
%s
*synth21
Module sync__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
P
%s
*synth28
$Module gray_to_bin__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
C
%s
*synth2+
Module gray_to_bin__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
@
%s
*synth2(
Module gray_to_bin 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2l
XPart Resources:
DSPs: 1824 (col length:96)
BRAMs: 960 (col length: RAMB18 96 RAMB36 48)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
merging register '%s' into '%s'3619*oasys2%
cnt_reg_reg[15:0]2default:default2%
cnt_reg_reg[15:0]2default:default2t
^D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/transmitter.v2default:default2
1182default:default8@Z8-4471h px? 
?
+design %s has port %s driven by constant %s3447*oasys2&
transmitter__GCB152default:default2
P[19]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2&
transmitter__GCB152default:default2
P[2]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2&
transmitter__GCB152default:default2
P[1]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2&
transmitter__GCB152default:default2
P[0]2default:default2
02default:defaultZ8-3917h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2%
frame_num_reg[12]2default:default2
LD2default:default2%
frame_num_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2%
frame_num_reg[13]2default:default2
LD2default:default2%
frame_num_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2%
frame_num_reg[14]2default:default2
LD2default:default2%
frame_num_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[0]__02default:default2
FDRE2default:default2&
counter_reg_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[1]__02default:default2
FDRE2default:default2&
counter_reg_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[2]__02default:default2
FDRE2default:default2&
counter_reg_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[3]__02default:default2
FDRE2default:default2&
counter_reg_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[4]__02default:default2
FDRE2default:default2&
counter_reg_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[5]__02default:default2
FDRE2default:default2&
counter_reg_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[6]__02default:default2
FDRE2default:default2&
counter_reg_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[7]__02default:default2
FDRE2default:default2&
counter_reg_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[8]__02default:default2
FDRE2default:default2&
counter_reg_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[9]__02default:default2
FDRE2default:default2&
counter_reg_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[10]__02default:default2
FDRE2default:default2'
counter_reg_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[11]__02default:default2
FDRE2default:default2'
counter_reg_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[12]__02default:default2
FDRE2default:default2'
counter_reg_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[13]__02default:default2
FDRE2default:default2'
counter_reg_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[14]__02default:default2
FDRE2default:default2'
counter_reg_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[15]__02default:default2
FDRE2default:default2'
counter_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
pkt_cnt_out_reg_reg[6]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
pkt_cnt_out_reg_reg[7]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
pkt_cnt_out_reg_reg[8]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
pkt_cnt_out_reg_reg[9]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
pkt_cnt_out_reg_reg[10]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
pkt_cnt_out_reg_reg[11]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
pkt_cnt_out_reg_reg[12]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
pkt_cnt_out_reg_reg[13]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2+
pkt_cnt_out_reg_reg[14]2default:default2
FDRE2default:default2+
pkt_cnt_out_reg_reg[15]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
\pkt_cnt_out_reg_reg[15] 2default:defaultZ8-3333h px? 
?
merging register '%s' into '%s'3619*oasys2%
cnt_reg_reg[15:0]2default:default2%
cnt_reg_reg[15:0]2default:default2q
[D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.srcs/sources_1/new/receiver.v2default:default2
1272default:default8@Z8-4471h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
P[19]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
P[2]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
P[1]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
P[0]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
O57[19]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
O57[2]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
O57[1]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2"
receiver__GCB12default:default2
O57[0]2default:default2
02default:defaultZ8-3917h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[0]__02default:default2
FDRE2default:default2&
counter_reg_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[1]__02default:default2
FDRE2default:default2&
counter_reg_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[2]__02default:default2
FDRE2default:default2&
counter_reg_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[3]__02default:default2
FDRE2default:default2&
counter_reg_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[4]__02default:default2
FDRE2default:default2&
counter_reg_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[5]__02default:default2
FDRE2default:default2&
counter_reg_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[6]__02default:default2
FDRE2default:default2&
counter_reg_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[7]__02default:default2
FDRE2default:default2&
counter_reg_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[8]__02default:default2
FDRE2default:default2&
counter_reg_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
counter_reg_reg[9]__02default:default2
FDRE2default:default2&
counter_reg_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[10]__02default:default2
FDRE2default:default2'
counter_reg_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[11]__02default:default2
FDRE2default:default2'
counter_reg_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[12]__02default:default2
FDRE2default:default2'
counter_reg_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[13]__02default:default2
FDRE2default:default2'
counter_reg_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[14]__02default:default2
FDRE2default:default2'
counter_reg_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
counter_reg_reg[15]__02default:default2
FDRE2default:default2'
counter_reg_reg[15]2default:defaultZ8-3886h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:11:08 ; elapsed = 00:12:54 . Memory (MB): peak = 2797.082 ; gain = 1340.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|      |RTL Partition                |Replication |Instances |
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|1     |fsm__GB0                     |           1|     48144|
2default:defaulth p
x
? 
k
%s
*synth2S
?|2     |fsm__GB1                     |           1|     39219|
2default:defaulth p
x
? 
k
%s
*synth2S
?|3     |datapath__7_transmitter__GD  |           1|    160393|
2default:defaulth p
x
? 
k
%s
*synth2S
?|4     |reg__21_transmitter          |           1|     12000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|5     |datapath__6_transmitter__GD  |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|6     |datapath__4_transmitter__GD  |           1|     44845|
2default:defaulth p
x
? 
k
%s
*synth2S
?|7     |datapath__17_transmitter__GD |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|8     |transmitter__GCB5            |           1|      2177|
2default:defaulth p
x
? 
k
%s
*synth2S
?|9     |transmitter__GCB6            |           1|     14177|
2default:defaulth p
x
? 
k
%s
*synth2S
?|10    |transmitter__GCB7            |           1|        98|
2default:defaulth p
x
? 
k
%s
*synth2S
?|11    |datapath__13_transmitter__GD |           1|     44845|
2default:defaulth p
x
? 
k
%s
*synth2S
?|12    |transmitter__GCB9            |           1|     24000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|13    |transmitter__GCB10           |           1|      4990|
2default:defaulth p
x
? 
k
%s
*synth2S
?|14    |transmitter__GCB11           |           1|      1555|
2default:defaulth p
x
? 
k
%s
*synth2S
?|15    |transmitter__GCB12           |           1|      2177|
2default:defaulth p
x
? 
k
%s
*synth2S
?|16    |transmitter__GCB13           |           1|      2233|
2default:defaulth p
x
? 
k
%s
*synth2S
?|17    |transmitter__GCB14           |           1|         0|
2default:defaulth p
x
? 
k
%s
*synth2S
?|18    |transmitter__GCB15           |           1|     38104|
2default:defaulth p
x
? 
k
%s
*synth2S
?|19    |transmitter__GCB16           |           1|     24290|
2default:defaulth p
x
? 
k
%s
*synth2S
?|20    |transmitter__GCB17           |           1|         0|
2default:defaulth p
x
? 
k
%s
*synth2S
?|21    |transmitter__GCB18           |           1|       997|
2default:defaulth p
x
? 
k
%s
*synth2S
?|22    |transmitter__GCB19           |           1|       954|
2default:defaulth p
x
? 
k
%s
*synth2S
?|23    |case__4682_receiver__GD      |           1|     36000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|24    |case__4683_receiver__GD      |           1|     35692|
2default:defaulth p
x
? 
k
%s
*synth2S
?|25    |fsm__1__GB2                  |           1|     39225|
2default:defaulth p
x
? 
k
%s
*synth2S
?|26    |datapath__29_receiver__GD    |           1|    160393|
2default:defaulth p
x
? 
k
%s
*synth2S
?|27    |receiver__GCB1               |           1|      2880|
2default:defaulth p
x
? 
k
%s
*synth2S
?|28    |receiver__GCB2               |           1|      4665|
2default:defaulth p
x
? 
k
%s
*synth2S
?|29    |receiver__GCB3               |           1|      1439|
2default:defaulth p
x
? 
k
%s
*synth2S
?|30    |receiver__GCB4               |           1|       311|
2default:defaulth p
x
? 
k
%s
*synth2S
?|31    |datapath__40_receiver__GD    |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|32    |receiver__GCB6               |           1|      1866|
2default:defaulth p
x
? 
k
%s
*synth2S
?|33    |receiver__GCB7               |           1|     12933|
2default:defaulth p
x
? 
k
%s
*synth2S
?|34    |datapath__28_receiver__GD    |           1|     44869|
2default:defaulth p
x
? 
k
%s
*synth2S
?|35    |reg__32_receiver             |           1|     12000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|36    |datapath__26_receiver__GD    |           1|     44845|
2default:defaulth p
x
? 
k
%s
*synth2S
?|37    |receiver__GCB11              |           1|     24000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|38    |receiver__GCB13              |           1|      4665|
2default:defaulth p
x
? 
k
%s
*synth2S
?|39    |receiver__GCB14              |           1|      1244|
2default:defaulth p
x
? 
k
%s
*synth2S
?|40    |receiver__GCB15              |           1|     26498|
2default:defaulth p
x
? 
k
%s
*synth2S
?|41    |receiver__GCB16              |           1|     24000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|42    |receiver__GCB17              |           1|     12837|
2default:defaulth p
x
? 
k
%s
*synth2S
?|43    |receiver__GCB18              |           1|      1131|
2default:defaulth p
x
? 
k
%s
*synth2S
?|44    |receiver__GCB19              |           1|       830|
2default:defaulth p
x
? 
k
%s
*synth2S
?|45    |receiver__GCB20              |           1|         0|
2default:defaulth p
x
? 
k
%s
*synth2S
?|46    |top_ip__GC0                  |           1|       667|
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:11:42 ; elapsed = 00:13:40 . Memory (MB): peak = 3158.645 ; gain = 1701.586
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Timing Optimization : Time (s): cpu = 00:12:07 ; elapsed = 00:14:09 . Memory (MB): peak = 3336.805 ; gain = 1879.746
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|      |RTL Partition                |Replication |Instances |
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|1     |fsm__GB0                     |           1|     37644|
2default:defaulth p
x
? 
k
%s
*synth2S
?|2     |fsm__GB1                     |           1|     28719|
2default:defaulth p
x
? 
k
%s
*synth2S
?|3     |datapath__7_transmitter__GD  |           1|    160384|
2default:defaulth p
x
? 
k
%s
*synth2S
?|4     |reg__21_transmitter          |           1|     12000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|5     |datapath__6_transmitter__GD  |           1|     44756|
2default:defaulth p
x
? 
k
%s
*synth2S
?|6     |datapath__4_transmitter__GD  |           1|      5597|
2default:defaulth p
x
? 
k
%s
*synth2S
?|7     |datapath__17_transmitter__GD |           1|     44756|
2default:defaulth p
x
? 
k
%s
*synth2S
?|8     |transmitter__GCB5            |           1|      1736|
2default:defaulth p
x
? 
k
%s
*synth2S
?|9     |transmitter__GCB6            |           1|     13736|
2default:defaulth p
x
? 
k
%s
*synth2S
?|10    |transmitter__GCB7            |           1|        98|
2default:defaulth p
x
? 
k
%s
*synth2S
?|11    |datapath__13_transmitter__GD |           1|      5597|
2default:defaulth p
x
? 
k
%s
*synth2S
?|12    |transmitter__GCB9            |           1|      3000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|13    |transmitter__GCB10           |           1|      3982|
2default:defaulth p
x
? 
k
%s
*synth2S
?|14    |transmitter__GCB11           |           1|      1240|
2default:defaulth p
x
? 
k
%s
*synth2S
?|15    |transmitter__GCB12           |           1|      1707|
2default:defaulth p
x
? 
k
%s
*synth2S
?|16    |transmitter__GCB13           |           1|      1792|
2default:defaulth p
x
? 
k
%s
*synth2S
?|17    |transmitter__GCB15           |           1|     17104|
2default:defaulth p
x
? 
k
%s
*synth2S
?|18    |transmitter__GCB16           |           1|     24290|
2default:defaulth p
x
? 
k
%s
*synth2S
?|19    |transmitter__GCB18           |           1|       997|
2default:defaulth p
x
? 
k
%s
*synth2S
?|20    |transmitter__GCB19           |           1|       954|
2default:defaulth p
x
? 
k
%s
*synth2S
?|21    |case__4682_receiver__GD      |           1|     25500|
2default:defaulth p
x
? 
k
%s
*synth2S
?|22    |case__4683_receiver__GD      |           1|     35692|
2default:defaulth p
x
? 
k
%s
*synth2S
?|23    |fsm__1__GB2                  |           1|     28725|
2default:defaulth p
x
? 
k
%s
*synth2S
?|24    |datapath__29_receiver__GD    |           1|    160384|
2default:defaulth p
x
? 
k
%s
*synth2S
?|25    |receiver__GCB1               |           1|      2870|
2default:defaulth p
x
? 
k
%s
*synth2S
?|26    |receiver__GCB2               |           1|      3720|
2default:defaulth p
x
? 
k
%s
*synth2S
?|27    |receiver__GCB3               |           1|      1131|
2default:defaulth p
x
? 
k
%s
*synth2S
?|28    |receiver__GCB4               |           1|       248|
2default:defaulth p
x
? 
k
%s
*synth2S
?|29    |datapath__40_receiver__GD    |           1|     44756|
2default:defaulth p
x
? 
k
%s
*synth2S
?|30    |receiver__GCB6               |           1|      1488|
2default:defaulth p
x
? 
k
%s
*synth2S
?|31    |receiver__GCB7               |           1|     12744|
2default:defaulth p
x
? 
k
%s
*synth2S
?|32    |datapath__28_receiver__GD    |           1|     44756|
2default:defaulth p
x
? 
k
%s
*synth2S
?|33    |reg__32_receiver             |           1|     12000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|34    |datapath__26_receiver__GD    |           1|      5597|
2default:defaulth p
x
? 
k
%s
*synth2S
?|35    |receiver__GCB11              |           1|      3000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|36    |receiver__GCB13              |           1|      3720|
2default:defaulth p
x
? 
k
%s
*synth2S
?|37    |receiver__GCB14              |           1|       992|
2default:defaulth p
x
? 
k
%s
*synth2S
?|38    |receiver__GCB15              |           1|     26498|
2default:defaulth p
x
? 
k
%s
*synth2S
?|39    |receiver__GCB16              |           1|      3000|
2default:defaulth p
x
? 
k
%s
*synth2S
?|40    |receiver__GCB17              |           1|     12837|
2default:defaulth p
x
? 
k
%s
*synth2S
?|41    |receiver__GCB18              |           1|      1131|
2default:defaulth p
x
? 
k
%s
*synth2S
?|42    |receiver__GCB19              |           1|       830|
2default:defaulth p
x
? 
k
%s
*synth2S
?|43    |top_ip__GC0                  |           1|       667|
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+-----------------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 