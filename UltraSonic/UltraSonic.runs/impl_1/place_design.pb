
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1091.0082default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: dad30dd9
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.011 . Memory (MB): peak = 1091.008 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1091.0082default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: c118967a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1103.055 ; gain = 12.0472default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 18f9a2bd8
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 18f9a2bd8
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 18f9a2bd8
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 1578dd7d8
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1111.7582default:default2
0.0002default:defaultZ17-268h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
~-----------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization       |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Very High Fanout   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 1b147b055
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 155d99a12
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 155d99a12
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1c94a331f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1d247d80b
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1dd812b3f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 1aa77a3f6
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 229dc76b4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 229dc76b4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 229dc76b4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1111.758 ; gain = 20.7502default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 209d054da
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
�
�BUFG insertion identified %s candidate nets, %s success, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason.30*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-31h px� 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 209d054da
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
5.8582default:defaultZ30-746h px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 260ddcea4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 260ddcea4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 260ddcea4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 260ddcea4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 24b4fb78f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 24b4fb78f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
>
)Ending Placer Task | Checksum: 162b26dca
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 1118.160 ; gain = 27.1522default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492default:default2
1002default:default2
1002default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.0772default:default2
1125.7772default:default2
7.5822default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2f
RF:/MastersProgram/LUSIDVIP/UltraSonic/UltraSonic.runs/impl_1/projectTop_placed.dcp2default:defaultZ17-1381h px� 
e
%s4*runtcl2I
5Executing : report_io -file projectTop_io_placed.rpt
2default:defaulth px� 
�
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.045 . Memory (MB): peak = 1127.805 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file projectTop_utilization_placed.rpt -pb projectTop_utilization_placed.pb
2default:defaulth px� 
�
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.047 . Memory (MB): peak = 1127.805 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2f
RExecuting : report_control_sets -verbose -file projectTop_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 1127.805 ; gain = 0.000
*commonh px� 


End Record