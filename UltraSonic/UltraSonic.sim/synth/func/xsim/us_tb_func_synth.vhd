-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Nov 30 21:22:25 2022
-- Host        : LAPTOP-IU943316 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/MastersProgram/ECE5710Hardware/ECE5710/LUSIDVIP/UltraSonic/UltraSonic.sim/sim_1/synth/func/xsim/us_tb_func_synth.vhd
-- Design      : projectTop
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BCDConvert is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    busy_reg_0 : out STD_LOGIC;
    next_state : out STD_LOGIC;
    clk125_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    bcdload : in STD_LOGIC;
    \q_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    current_state_reg : in STD_LOGIC
  );
end BCDConvert;

architecture STRUCTURE of BCDConvert is
  signal \FSM_sequential_add_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_add_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_add_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal add_counter : STD_LOGIC;
  signal \add_counter__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \add_counter__0\ : signal is "yes";
  signal bcd_data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \bcd_data0_carry__0_n_0\ : STD_LOGIC;
  signal \bcd_data0_carry__0_n_1\ : STD_LOGIC;
  signal \bcd_data0_carry__0_n_2\ : STD_LOGIC;
  signal \bcd_data0_carry__0_n_3\ : STD_LOGIC;
  signal \bcd_data0_carry__1_n_0\ : STD_LOGIC;
  signal \bcd_data0_carry__1_n_1\ : STD_LOGIC;
  signal \bcd_data0_carry__1_n_2\ : STD_LOGIC;
  signal \bcd_data0_carry__1_n_3\ : STD_LOGIC;
  signal \bcd_data0_carry__2_n_0\ : STD_LOGIC;
  signal \bcd_data0_carry__2_n_1\ : STD_LOGIC;
  signal \bcd_data0_carry__2_n_2\ : STD_LOGIC;
  signal \bcd_data0_carry__2_n_3\ : STD_LOGIC;
  signal \bcd_data0_carry__3_n_2\ : STD_LOGIC;
  signal \bcd_data0_carry__3_n_3\ : STD_LOGIC;
  signal bcd_data0_carry_i_1_n_0 : STD_LOGIC;
  signal bcd_data0_carry_n_0 : STD_LOGIC;
  signal bcd_data0_carry_n_1 : STD_LOGIC;
  signal bcd_data0_carry_n_2 : STD_LOGIC;
  signal bcd_data0_carry_n_3 : STD_LOGIC;
  signal bcd_data0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bcd_data0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \bcd_data0_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \bcd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[17]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[19]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[19]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[20]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[21]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[23]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[23]_i_6_n_0\ : STD_LOGIC;
  signal \bcd_data[23]_i_7_n_0\ : STD_LOGIC;
  signal \bcd_data[23]_i_8_n_0\ : STD_LOGIC;
  signal \bcd_data[24]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[24]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[24]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[25]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[25]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[25]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[26]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[26]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[26]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_data[27]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[27]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[27]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[27]_i_6_n_0\ : STD_LOGIC;
  signal \bcd_data[28]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[28]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[28]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[28]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[28]_i_6_n_0\ : STD_LOGIC;
  signal \bcd_data[29]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[29]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[29]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[29]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[30]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_data[30]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[30]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[30]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_10_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_11_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_12_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_13_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_4_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_5_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_6_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_7_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_8_n_0\ : STD_LOGIC;
  signal \bcd_data[31]_i_9_n_0\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \bcd_data_reg_n_0_[9]\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \^busy_reg_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal result_rdy : STD_LOGIC;
  signal result_rdy_i_1_n_0 : STD_LOGIC;
  signal sh_counter : STD_LOGIC;
  signal \sh_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \sh_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \sh_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \sh_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \sh_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \sh_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \sh_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \sh_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \state__0\ : signal is "yes";
  signal \NLW_bcd_data0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bcd_data0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bcd_data0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bcd_data0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bcd_data0_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bcd_data0_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_add_counter_reg[0]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_add_counter_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_add_counter_reg[1]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,";
  attribute KEEP of \FSM_sequential_add_counter_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_add_counter_reg[2]\ : label is "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,";
  attribute KEEP of \FSM_sequential_add_counter_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,SHIFT:011,SETUP:001,ADD:010,DONE:100";
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,SHIFT:011,SETUP:001,ADD:010,DONE:100";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,SHIFT:011,SETUP:001,ADD:010,DONE:100";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \bcd_data[27]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd_data[28]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sh_counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sh_counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sh_counter[3]_i_2\ : label is "soft_lutpair1";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  busy_reg_0 <= \^busy_reg_0\;
\FSM_sequential_add_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \add_counter__0\(2),
      I2 => add_counter,
      I3 => \add_counter__0\(0),
      O => \FSM_sequential_add_counter[0]_i_1_n_0\
    );
\FSM_sequential_add_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06FF0600"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \add_counter__0\(1),
      I2 => \add_counter__0\(2),
      I3 => add_counter,
      I4 => \add_counter__0\(1),
      O => \FSM_sequential_add_counter[1]_i_1_n_0\
    );
\FSM_sequential_add_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \add_counter__0\(1),
      I2 => \add_counter__0\(2),
      I3 => add_counter,
      I4 => \add_counter__0\(2),
      O => \FSM_sequential_add_counter[2]_i_1_n_0\
    );
\FSM_sequential_add_counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000202020202"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \add_counter__0\(1),
      I4 => \add_counter__0\(0),
      I5 => \add_counter__0\(2),
      O => add_counter
    );
\FSM_sequential_add_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_sequential_add_counter[0]_i_1_n_0\,
      Q => \add_counter__0\(0),
      R => '0'
    );
\FSM_sequential_add_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_sequential_add_counter[1]_i_1_n_0\,
      Q => \add_counter__0\(1),
      R => '0'
    );
\FSM_sequential_add_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_sequential_add_counter[2]_i_1_n_0\,
      Q => \add_counter__0\(2),
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFFFF007F0000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFEFFF"
    )
        port map (
      I0 => \add_counter__0\(1),
      I1 => \add_counter__0\(0),
      I2 => \add_counter__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \sh_counter_reg_n_0_[0]\,
      I1 => \sh_counter_reg_n_0_[1]\,
      I2 => \sh_counter_reg_n_0_[3]\,
      I3 => \sh_counter_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF888FFCFFF8F8"
    )
        port map (
      I0 => \add_counter__0\(2),
      I1 => add_counter,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => current_state_reg,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2),
      R => '0'
    );
bcd_data0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bcd_data0_carry_n_0,
      CO(2) => bcd_data0_carry_n_1,
      CO(1) => bcd_data0_carry_n_2,
      CO(0) => bcd_data0_carry_n_3,
      CYINIT => \bcd_data_reg_n_0_[12]\,
      DI(3 downto 1) => B"000",
      DI(0) => \bcd_data_reg_n_0_[13]\,
      O(3 downto 0) => bcd_data0(4 downto 1),
      S(3) => \bcd_data_reg_n_0_[16]\,
      S(2) => \bcd_data_reg_n_0_[15]\,
      S(1) => \bcd_data_reg_n_0_[14]\,
      S(0) => bcd_data0_carry_i_1_n_0
    );
\bcd_data0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bcd_data0_carry_n_0,
      CO(3) => \bcd_data0_carry__0_n_0\,
      CO(2) => \bcd_data0_carry__0_n_1\,
      CO(1) => \bcd_data0_carry__0_n_2\,
      CO(0) => \bcd_data0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bcd_data0(8 downto 5),
      S(3) => \^q\(0),
      S(2) => \bcd_data_reg_n_0_[19]\,
      S(1) => \bcd_data_reg_n_0_[18]\,
      S(0) => \bcd_data_reg_n_0_[17]\
    );
\bcd_data0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_carry__0_n_0\,
      CO(3) => \bcd_data0_carry__1_n_0\,
      CO(2) => \bcd_data0_carry__1_n_1\,
      CO(1) => \bcd_data0_carry__1_n_2\,
      CO(0) => \bcd_data0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bcd_data0(12 downto 9),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\bcd_data0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_carry__1_n_0\,
      CO(3) => \bcd_data0_carry__2_n_0\,
      CO(2) => \bcd_data0_carry__2_n_1\,
      CO(1) => \bcd_data0_carry__2_n_2\,
      CO(0) => \bcd_data0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bcd_data0(16 downto 13),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\bcd_data0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_bcd_data0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bcd_data0_carry__3_n_2\,
      CO(0) => \bcd_data0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bcd_data0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => bcd_data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => \^q\(11 downto 9)
    );
bcd_data0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[13]\,
      O => bcd_data0_carry_i_1_n_0
    );
\bcd_data0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bcd_data0_inferred__0/i__carry_n_0\,
      CO(2) => \bcd_data0_inferred__0/i__carry_n_1\,
      CO(1) => \bcd_data0_inferred__0/i__carry_n_2\,
      CO(0) => \bcd_data0_inferred__0/i__carry_n_3\,
      CYINIT => \bcd_data_reg_n_0_[16]\,
      DI(3 downto 1) => B"000",
      DI(0) => \bcd_data_reg_n_0_[17]\,
      O(3) => \bcd_data0_inferred__0/i__carry_n_4\,
      O(2) => \bcd_data0_inferred__0/i__carry_n_5\,
      O(1) => \bcd_data0_inferred__0/i__carry_n_6\,
      O(0) => \bcd_data0_inferred__0/i__carry_n_7\,
      S(3) => \^q\(0),
      S(2) => \bcd_data_reg_n_0_[19]\,
      S(1) => \bcd_data_reg_n_0_[18]\,
      S(0) => \i__carry_i_1__1_n_0\
    );
\bcd_data0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_inferred__0/i__carry_n_0\,
      CO(3) => \bcd_data0_inferred__0/i__carry__0_n_0\,
      CO(2) => \bcd_data0_inferred__0/i__carry__0_n_1\,
      CO(1) => \bcd_data0_inferred__0/i__carry__0_n_2\,
      CO(0) => \bcd_data0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bcd_data0_inferred__0/i__carry__0_n_4\,
      O(2) => \bcd_data0_inferred__0/i__carry__0_n_5\,
      O(1) => \bcd_data0_inferred__0/i__carry__0_n_6\,
      O(0) => \bcd_data0_inferred__0/i__carry__0_n_7\,
      S(3 downto 0) => \^q\(4 downto 1)
    );
\bcd_data0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_inferred__0/i__carry__0_n_0\,
      CO(3) => \bcd_data0_inferred__0/i__carry__1_n_0\,
      CO(2) => \bcd_data0_inferred__0/i__carry__1_n_1\,
      CO(1) => \bcd_data0_inferred__0/i__carry__1_n_2\,
      CO(0) => \bcd_data0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bcd_data0_inferred__0/i__carry__1_n_4\,
      O(2) => \bcd_data0_inferred__0/i__carry__1_n_5\,
      O(1) => \bcd_data0_inferred__0/i__carry__1_n_6\,
      O(0) => \bcd_data0_inferred__0/i__carry__1_n_7\,
      S(3 downto 0) => \^q\(8 downto 5)
    );
\bcd_data0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_bcd_data0_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bcd_data0_inferred__0/i__carry__2_n_2\,
      CO(0) => \bcd_data0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bcd_data0_inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2) => \bcd_data0_inferred__0/i__carry__2_n_5\,
      O(1) => \bcd_data0_inferred__0/i__carry__2_n_6\,
      O(0) => \bcd_data0_inferred__0/i__carry__2_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(11 downto 9)
    );
\bcd_data0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bcd_data0_inferred__1/i__carry_n_0\,
      CO(2) => \bcd_data0_inferred__1/i__carry_n_1\,
      CO(1) => \bcd_data0_inferred__1/i__carry_n_2\,
      CO(0) => \bcd_data0_inferred__1/i__carry_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(1),
      O(3) => \bcd_data0_inferred__1/i__carry_n_4\,
      O(2) => \bcd_data0_inferred__1/i__carry_n_5\,
      O(1) => \bcd_data0_inferred__1/i__carry_n_6\,
      O(0) => \bcd_data0_inferred__1/i__carry_n_7\,
      S(3 downto 1) => \^q\(4 downto 2),
      S(0) => \i__carry_i_1__2_n_0\
    );
\bcd_data0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_inferred__1/i__carry_n_0\,
      CO(3) => \bcd_data0_inferred__1/i__carry__0_n_0\,
      CO(2) => \bcd_data0_inferred__1/i__carry__0_n_1\,
      CO(1) => \bcd_data0_inferred__1/i__carry__0_n_2\,
      CO(0) => \bcd_data0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bcd_data0_inferred__1/i__carry__0_n_4\,
      O(2) => \bcd_data0_inferred__1/i__carry__0_n_5\,
      O(1) => \bcd_data0_inferred__1/i__carry__0_n_6\,
      O(0) => \bcd_data0_inferred__1/i__carry__0_n_7\,
      S(3 downto 0) => \^q\(8 downto 5)
    );
\bcd_data0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bcd_data0_inferred__1/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_bcd_data0_inferred__1/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bcd_data0_inferred__1/i__carry__1_n_2\,
      CO(0) => \bcd_data0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bcd_data0_inferred__1/i__carry__1_O_UNCONNECTED\(3),
      O(2) => \bcd_data0_inferred__1/i__carry__1_n_5\,
      O(1) => \bcd_data0_inferred__1/i__carry__1_n_6\,
      O(0) => \bcd_data0_inferred__1/i__carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(11 downto 9)
    );
\bcd_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022A"
    )
        port map (
      I0 => \q_reg[15]\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => bcd_data0_in(0)
    );
\bcd_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[9]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(10),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(10)
    );
\bcd_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002F222"
    )
        port map (
      I0 => bcdload,
      I1 => \^busy_reg_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      O => \bcd_data[11]_i_1_n_0\
    );
\bcd_data[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[10]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(11),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(11)
    );
\bcd_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32020202323A023A"
    )
        port map (
      I0 => \q_reg[15]\(12),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \bcd_data_reg_n_0_[11]\,
      I5 => \bcd_data[12]_i_2_n_0\,
      O => bcd_data0_in(12)
    );
\bcd_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444444444C0"
    )
        port map (
      I0 => \q_reg[15]\(12),
      I1 => \state__0\(1),
      I2 => \bcd_data_reg_n_0_[12]\,
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => \add_counter__0\(1),
      I5 => \add_counter__0\(2),
      O => \bcd_data[12]_i_2_n_0\
    );
\bcd_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30220022302233AA"
    )
        port map (
      I0 => \q_reg[15]\(13),
      I1 => \state__0\(2),
      I2 => \bcd_data_reg_n_0_[12]\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \bcd_data[13]_i_2_n_0\,
      O => bcd_data0_in(13)
    );
\bcd_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444440C"
    )
        port map (
      I0 => \q_reg[15]\(13),
      I1 => \state__0\(1),
      I2 => bcd_data0(1),
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => \add_counter__0\(1),
      I5 => \add_counter__0\(2),
      O => \bcd_data[13]_i_2_n_0\
    );
\bcd_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30220022302233AA"
    )
        port map (
      I0 => \q_reg[15]\(14),
      I1 => \state__0\(2),
      I2 => \bcd_data_reg_n_0_[13]\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \bcd_data[14]_i_2_n_0\,
      O => bcd_data0_in(14)
    );
\bcd_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444440C"
    )
        port map (
      I0 => \q_reg[15]\(14),
      I1 => \state__0\(1),
      I2 => bcd_data0(2),
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => \add_counter__0\(1),
      I5 => \add_counter__0\(2),
      O => \bcd_data[14]_i_2_n_0\
    );
\bcd_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3100333F31003100"
    )
        port map (
      I0 => \bcd_data[19]_i_3_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^busy_reg_0\,
      I5 => bcdload,
      O => \bcd_data[15]_i_1_n_0\
    );
\bcd_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32020202323A023A"
    )
        port map (
      I0 => \q_reg[15]\(15),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \bcd_data_reg_n_0_[14]\,
      I5 => \bcd_data[15]_i_3_n_0\,
      O => bcd_data0_in(15)
    );
\bcd_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444440C"
    )
        port map (
      I0 => \q_reg[15]\(15),
      I1 => \state__0\(1),
      I2 => bcd_data0(3),
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => \add_counter__0\(1),
      I5 => \add_counter__0\(2),
      O => \bcd_data[15]_i_3_n_0\
    );
\bcd_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8F8F88888888"
    )
        port map (
      I0 => sh_counter,
      I1 => \bcd_data_reg_n_0_[15]\,
      I2 => \bcd_data[16]_i_2_n_0\,
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => bcd_data0(4),
      I5 => \bcd_data[23]_i_6_n_0\,
      O => bcd_data0_in(16)
    );
\bcd_data[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF55FF7F"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \bcd_data_reg_n_0_[18]\,
      I2 => \bcd_data_reg_n_0_[17]\,
      I3 => \bcd_data_reg_n_0_[16]\,
      I4 => \bcd_data_reg_n_0_[19]\,
      O => \bcd_data[16]_i_2_n_0\
    );
\bcd_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEAEAAAAAAAA"
    )
        port map (
      I0 => \bcd_data[17]_i_2_n_0\,
      I1 => \bcd_data0_inferred__0/i__carry_n_7\,
      I2 => \bcd_data[23]_i_4_n_0\,
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => bcd_data0(5),
      I5 => \bcd_data[23]_i_6_n_0\,
      O => bcd_data0_in(17)
    );
\bcd_data[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[16]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \bcd_data[17]_i_2_n_0\
    );
\bcd_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry_n_6\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(6),
      I4 => \bcd_data[23]_i_6_n_0\,
      I5 => \bcd_data[18]_i_2_n_0\,
      O => bcd_data0_in(18)
    );
\bcd_data[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \bcd_data_reg_n_0_[17]\,
      O => \bcd_data[18]_i_2_n_0\
    );
\bcd_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F5100555F5500"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \bcd_data[19]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => current_state_reg,
      I5 => \bcd_data[19]_i_4_n_0\,
      O => \bcd_data[19]_i_1_n_0\
    );
\bcd_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEAEAAAAAAAA"
    )
        port map (
      I0 => \bcd_data[19]_i_5_n_0\,
      I1 => \bcd_data0_inferred__0/i__carry_n_5\,
      I2 => \bcd_data[23]_i_4_n_0\,
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => bcd_data0(7),
      I5 => \bcd_data[23]_i_6_n_0\,
      O => bcd_data0_in(19)
    );
\bcd_data[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \add_counter__0\(2),
      I1 => \add_counter__0\(1),
      I2 => \bcd_data[23]_i_5_n_0\,
      O => \bcd_data[19]_i_3_n_0\
    );
\bcd_data[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \add_counter__0\(2),
      I1 => \add_counter__0\(1),
      I2 => \bcd_data[23]_i_4_n_0\,
      O => \bcd_data[19]_i_4_n_0\
    );
\bcd_data[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[18]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \bcd_data[19]_i_5_n_0\
    );
\bcd_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(1),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(1)
    );
\bcd_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry_n_4\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(8),
      I4 => \bcd_data[23]_i_6_n_0\,
      I5 => \bcd_data[20]_i_2_n_0\,
      O => bcd_data0_in(20)
    );
\bcd_data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111F11111111111"
    )
        port map (
      I0 => \bcd_data[23]_i_8_n_0\,
      I1 => \^q\(0),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => \bcd_data_reg_n_0_[19]\,
      O => \bcd_data[20]_i_2_n_0\
    );
\bcd_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry__0_n_7\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(9),
      I4 => \bcd_data[23]_i_6_n_0\,
      I5 => \bcd_data[21]_i_2_n_0\,
      O => bcd_data0_in(21)
    );
\bcd_data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4444444"
    )
        port map (
      I0 => \bcd_data[23]_i_8_n_0\,
      I1 => \bcd_data0_inferred__1/i__carry_n_7\,
      I2 => \^q\(0),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \state__0\(2),
      O => \bcd_data[21]_i_2_n_0\
    );
\bcd_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry__0_n_6\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(10),
      I4 => \bcd_data[23]_i_6_n_0\,
      I5 => \bcd_data[22]_i_2_n_0\,
      O => bcd_data0_in(22)
    );
\bcd_data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4444444"
    )
        port map (
      I0 => \bcd_data[23]_i_8_n_0\,
      I1 => \bcd_data0_inferred__1/i__carry_n_6\,
      I2 => \^q\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \state__0\(2),
      O => \bcd_data[22]_i_2_n_0\
    );
\bcd_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001110"
    )
        port map (
      I0 => \bcd_data[31]_i_4_n_0\,
      I1 => \add_counter__0\(2),
      I2 => \state__0\(1),
      I3 => current_state_reg,
      I4 => \state__0\(2),
      I5 => \bcd_data[19]_i_1_n_0\,
      O => \bcd_data[23]_i_1_n_0\
    );
\bcd_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry__0_n_5\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(11),
      I4 => \bcd_data[23]_i_6_n_0\,
      I5 => \bcd_data[23]_i_7_n_0\,
      O => bcd_data0_in(23)
    );
\bcd_data[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0155FFFF"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[19]\,
      I1 => \bcd_data_reg_n_0_[16]\,
      I2 => \bcd_data_reg_n_0_[17]\,
      I3 => \bcd_data_reg_n_0_[18]\,
      I4 => \add_counter__0\(0),
      O => \bcd_data[23]_i_4_n_0\
    );
\bcd_data[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBBBB"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \bcd_data_reg_n_0_[15]\,
      I2 => \bcd_data_reg_n_0_[12]\,
      I3 => \bcd_data_reg_n_0_[13]\,
      I4 => \bcd_data_reg_n_0_[14]\,
      O => \bcd_data[23]_i_5_n_0\
    );
\bcd_data[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \add_counter__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \add_counter__0\(1),
      O => \bcd_data[23]_i_6_n_0\
    );
\bcd_data[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F44444444444"
    )
        port map (
      I0 => \bcd_data[23]_i_8_n_0\,
      I1 => \bcd_data0_inferred__1/i__carry_n_5\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => \^q\(2),
      O => \bcd_data[23]_i_7_n_0\
    );
\bcd_data[23]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \bcd_data[31]_i_4_n_0\,
      I1 => \state__0\(0),
      I2 => \add_counter__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => \bcd_data[23]_i_8_n_0\
    );
\bcd_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFBAAAAAAAA"
    )
        port map (
      I0 => \bcd_data[24]_i_2_n_0\,
      I1 => \bcd_data[24]_i_3_n_0\,
      I2 => \bcd_data[24]_i_4_n_0\,
      I3 => \bcd_data0_inferred__1/i__carry_n_4\,
      I4 => \bcd_data[31]_i_4_n_0\,
      I5 => \bcd_data[27]_i_5_n_0\,
      O => bcd_data0_in(24)
    );
\bcd_data[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \bcd_data[24]_i_2_n_0\
    );
\bcd_data[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF5F5FFFFFFFF"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \bcd_data[31]_i_11_n_0\,
      I5 => \add_counter__0\(1),
      O => \bcd_data[24]_i_3_n_0\
    );
\bcd_data[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \add_counter__0\(1),
      I1 => bcd_data0(12),
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => \bcd_data[23]_i_4_n_0\,
      I4 => \bcd_data0_inferred__0/i__carry__0_n_4\,
      O => \bcd_data[24]_i_4_n_0\
    );
\bcd_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F8888"
    )
        port map (
      I0 => sh_counter,
      I1 => \^q\(4),
      I2 => \bcd_data[25]_i_2_n_0\,
      I3 => \bcd_data[25]_i_3_n_0\,
      I4 => \bcd_data[27]_i_5_n_0\,
      O => bcd_data0_in(25)
    );
\bcd_data[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAAFBFB"
    )
        port map (
      I0 => \add_counter__0\(1),
      I1 => bcd_data0(13),
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => \bcd_data[23]_i_4_n_0\,
      I4 => \bcd_data0_inferred__0/i__carry__1_n_7\,
      O => \bcd_data[25]_i_2_n_0\
    );
\bcd_data[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000FFFF90009000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \add_counter__0\(1),
      I3 => \bcd_data[25]_i_4_n_0\,
      I4 => \bcd_data[31]_i_4_n_0\,
      I5 => \bcd_data0_inferred__1/i__carry__0_n_7\,
      O => \bcd_data[25]_i_3_n_0\
    );
\bcd_data[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A800AAAA"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \bcd_data[31]_i_11_n_0\,
      O => \bcd_data[25]_i_4_n_0\
    );
\bcd_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEEEEEEEEEEE"
    )
        port map (
      I0 => \bcd_data[26]_i_2_n_0\,
      I1 => \bcd_data[26]_i_3_n_0\,
      I2 => \^q\(5),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => bcd_data0_in(26)
    );
\bcd_data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000101010001000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \add_counter__0\(2),
      I2 => \bcd_data[31]_i_10_n_0\,
      I3 => \bcd_data[26]_i_4_n_0\,
      I4 => \bcd_data[31]_i_4_n_0\,
      I5 => \bcd_data0_inferred__1/i__carry__0_n_6\,
      O => \bcd_data[26]_i_2_n_0\
    );
\bcd_data[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808AA08"
    )
        port map (
      I0 => \bcd_data[23]_i_6_n_0\,
      I1 => bcd_data0(14),
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => \bcd_data0_inferred__0/i__carry__1_n_6\,
      I4 => \bcd_data[23]_i_4_n_0\,
      O => \bcd_data[26]_i_3_n_0\
    );
\bcd_data[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008080880"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \add_counter__0\(1),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \bcd_data[31]_i_11_n_0\,
      O => \bcd_data[26]_i_4_n_0\
    );
\bcd_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABF"
    )
        port map (
      I0 => \bcd_data[19]_i_1_n_0\,
      I1 => \bcd_data[31]_i_4_n_0\,
      I2 => \bcd_data[31]_i_3_n_0\,
      I3 => \add_counter__0\(2),
      I4 => \bcd_data[31]_i_6_n_0\,
      O => \bcd_data[27]_i_1_n_0\
    );
\bcd_data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => sh_counter,
      I1 => \^q\(6),
      I2 => \bcd_data[27]_i_3_n_0\,
      I3 => \add_counter__0\(1),
      I4 => \bcd_data[27]_i_4_n_0\,
      I5 => \bcd_data[27]_i_5_n_0\,
      O => bcd_data0_in(27)
    );
\bcd_data[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606F6F"
    )
        port map (
      I0 => \^q\(7),
      I1 => \bcd_data[27]_i_6_n_0\,
      I2 => \add_counter__0\(0),
      I3 => \bcd_data[28]_i_5_n_0\,
      I4 => \bcd_data0_inferred__1/i__carry__0_n_5\,
      O => \bcd_data[27]_i_3_n_0\
    );
\bcd_data[27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry__1_n_5\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(15),
      O => \bcd_data[27]_i_4_n_0\
    );
\bcd_data[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \add_counter__0\(2),
      I3 => \state__0\(0),
      O => \bcd_data[27]_i_5_n_0\
    );
\bcd_data[27]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      O => \bcd_data[27]_i_6_n_0\
    );
\bcd_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888A"
    )
        port map (
      I0 => \bcd_data[31]_i_10_n_0\,
      I1 => \bcd_data[28]_i_2_n_0\,
      I2 => \bcd_data[28]_i_3_n_0\,
      I3 => \bcd_data[28]_i_4_n_0\,
      I4 => \state__0\(0),
      I5 => \add_counter__0\(2),
      O => bcd_data0_in(28)
    );
\bcd_data[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \state__0\(0),
      I2 => \^q\(8),
      I3 => \bcd_data[31]_i_5_n_0\,
      O => \bcd_data[28]_i_2_n_0\
    );
\bcd_data[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DD0D"
    )
        port map (
      I0 => bcd_data0(16),
      I1 => \bcd_data[23]_i_5_n_0\,
      I2 => \bcd_data0_inferred__0/i__carry__1_n_4\,
      I3 => \bcd_data[23]_i_4_n_0\,
      I4 => \add_counter__0\(1),
      O => \bcd_data[28]_i_3_n_0\
    );
\bcd_data[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A008A008AAA8A"
    )
        port map (
      I0 => \add_counter__0\(1),
      I1 => \bcd_data[28]_i_5_n_0\,
      I2 => \bcd_data0_inferred__1/i__carry__0_n_4\,
      I3 => \add_counter__0\(0),
      I4 => \bcd_data[28]_i_6_n_0\,
      I5 => \^q\(8),
      O => \bcd_data[28]_i_4_n_0\
    );
\bcd_data[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \bcd_data[28]_i_5_n_0\
    );
\bcd_data[28]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \bcd_data[28]_i_6_n_0\
    );
\bcd_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404044"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \bcd_data[29]_i_2_n_0\,
      I3 => \bcd_data[29]_i_3_n_0\,
      I4 => \bcd_data[29]_i_4_n_0\,
      O => bcd_data0_in(29)
    );
\bcd_data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEA0000AAAA4400"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \add_counter__0\(2),
      I2 => \^q\(10),
      I3 => \^q\(11),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \bcd_data[29]_i_2_n_0\
    );
\bcd_data[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DD0D"
    )
        port map (
      I0 => bcd_data0(17),
      I1 => \bcd_data[23]_i_5_n_0\,
      I2 => \bcd_data0_inferred__0/i__carry__2_n_7\,
      I3 => \bcd_data[23]_i_4_n_0\,
      I4 => \add_counter__0\(1),
      O => \bcd_data[29]_i_3_n_0\
    );
\bcd_data[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFEEEEEEEEEEEE"
    )
        port map (
      I0 => \add_counter__0\(2),
      I1 => \state__0\(0),
      I2 => \bcd_data[31]_i_13_n_0\,
      I3 => \bcd_data0_inferred__1/i__carry__1_n_7\,
      I4 => \add_counter__0\(1),
      I5 => \bcd_data[29]_i_5_n_0\,
      O => \bcd_data[29]_i_4_n_0\
    );
\bcd_data[29]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D57F"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \bcd_data[28]_i_6_n_0\,
      I2 => \^q\(8),
      I3 => \^q\(9),
      O => \bcd_data[29]_i_5_n_0\
    );
\bcd_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[1]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(2)
    );
\bcd_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888A"
    )
        port map (
      I0 => \bcd_data[31]_i_10_n_0\,
      I1 => \bcd_data[30]_i_2_n_0\,
      I2 => \bcd_data[30]_i_3_n_0\,
      I3 => \bcd_data[30]_i_4_n_0\,
      I4 => \state__0\(0),
      I5 => \add_counter__0\(2),
      O => bcd_data0_in(30)
    );
\bcd_data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE04AE40AA00AA00"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \add_counter__0\(2),
      I2 => \^q\(10),
      I3 => \^q\(9),
      I4 => \^q\(8),
      I5 => \^q\(11),
      O => \bcd_data[30]_i_2_n_0\
    );
\bcd_data[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D700D7000000D700"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \^q\(10),
      I2 => \bcd_data[30]_i_5_n_0\,
      I3 => \add_counter__0\(1),
      I4 => \bcd_data0_inferred__1/i__carry__1_n_6\,
      I5 => \bcd_data[31]_i_13_n_0\,
      O => \bcd_data[30]_i_3_n_0\
    );
\bcd_data[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DD0D"
    )
        port map (
      I0 => \bcd_data0_inferred__0/i__carry__2_n_6\,
      I1 => \bcd_data[23]_i_4_n_0\,
      I2 => bcd_data0(18),
      I3 => \bcd_data[23]_i_5_n_0\,
      I4 => \add_counter__0\(1),
      O => \bcd_data[30]_i_4_n_0\
    );
\bcd_data[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \bcd_data[30]_i_5_n_0\
    );
\bcd_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF15FFFF"
    )
        port map (
      I0 => \add_counter__0\(2),
      I1 => \bcd_data[31]_i_3_n_0\,
      I2 => \bcd_data[31]_i_4_n_0\,
      I3 => \bcd_data[19]_i_1_n_0\,
      I4 => \bcd_data[31]_i_5_n_0\,
      I5 => \bcd_data[31]_i_6_n_0\,
      O => \bcd_data[31]_i_1_n_0\
    );
\bcd_data[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \bcd_data[31]_i_10_n_0\
    );
\bcd_data[31]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(7),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => \^q\(10),
      O => \bcd_data[31]_i_11_n_0\
    );
\bcd_data[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \bcd_data[30]_i_5_n_0\,
      I1 => \^q\(10),
      I2 => \^q\(11),
      I3 => \add_counter__0\(0),
      O => \bcd_data[31]_i_12_n_0\
    );
\bcd_data[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBBBB"
    )
        port map (
      I0 => \add_counter__0\(0),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \bcd_data[31]_i_13_n_0\
    );
\bcd_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00AEAE00000000"
    )
        port map (
      I0 => \bcd_data[31]_i_7_n_0\,
      I1 => \bcd_data[31]_i_8_n_0\,
      I2 => \bcd_data[31]_i_9_n_0\,
      I3 => \^q\(10),
      I4 => \state__0\(0),
      I5 => \bcd_data[31]_i_10_n_0\,
      O => bcd_data0_in(31)
    );
\bcd_data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5DDDFFFFFFFF"
    )
        port map (
      I0 => \add_counter__0\(1),
      I1 => \bcd_data[31]_i_11_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \add_counter__0\(0),
      O => \bcd_data[31]_i_3_n_0\
    );
\bcd_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0057FFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \add_counter__0\(0),
      I5 => \add_counter__0\(1),
      O => \bcd_data[31]_i_4_n_0\
    );
\bcd_data[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0155FFFF"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \^q\(10),
      I4 => \add_counter__0\(2),
      O => \bcd_data[31]_i_5_n_0\
    );
\bcd_data[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFB"
    )
        port map (
      I0 => \state__0\(2),
      I1 => bcdload,
      I2 => \^busy_reg_0\,
      I3 => \state__0\(1),
      O => \bcd_data[31]_i_6_n_0\
    );
\bcd_data[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEBEBEEEAAAAAAAA"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^q\(11),
      I2 => \^q\(10),
      I3 => \^q\(9),
      I4 => \^q\(8),
      I5 => \add_counter__0\(2),
      O => \bcd_data[31]_i_7_n_0\
    );
\bcd_data[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => \bcd_data[31]_i_12_n_0\,
      I1 => \add_counter__0\(1),
      I2 => \bcd_data0_inferred__1/i__carry__1_n_5\,
      I3 => \bcd_data[31]_i_13_n_0\,
      O => \bcd_data[31]_i_8_n_0\
    );
\bcd_data[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \add_counter__0\(2),
      I1 => \add_counter__0\(1),
      I2 => \bcd_data[23]_i_5_n_0\,
      I3 => bcd_data0(19),
      I4 => \bcd_data[23]_i_4_n_0\,
      I5 => \bcd_data0_inferred__0/i__carry__2_n_5\,
      O => \bcd_data[31]_i_9_n_0\
    );
\bcd_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(3),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(3)
    );
\bcd_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[3]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(4),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(4)
    );
\bcd_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[4]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(5),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(5)
    );
\bcd_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[5]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(6),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(6)
    );
\bcd_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[6]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(7),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(7)
    );
\bcd_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[7]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(8),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(8)
    );
\bcd_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030B8F0"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[8]\,
      I1 => \state__0\(0),
      I2 => \q_reg[15]\(9),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => bcd_data0_in(9)
    );
\bcd_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(0),
      Q => \bcd_data_reg_n_0_[0]\,
      R => '0'
    );
\bcd_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(10),
      Q => \bcd_data_reg_n_0_[10]\,
      R => '0'
    );
\bcd_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(11),
      Q => \bcd_data_reg_n_0_[11]\,
      R => '0'
    );
\bcd_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[15]_i_1_n_0\,
      D => bcd_data0_in(12),
      Q => \bcd_data_reg_n_0_[12]\,
      R => '0'
    );
\bcd_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[15]_i_1_n_0\,
      D => bcd_data0_in(13),
      Q => \bcd_data_reg_n_0_[13]\,
      R => '0'
    );
\bcd_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[15]_i_1_n_0\,
      D => bcd_data0_in(14),
      Q => \bcd_data_reg_n_0_[14]\,
      R => '0'
    );
\bcd_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[15]_i_1_n_0\,
      D => bcd_data0_in(15),
      Q => \bcd_data_reg_n_0_[15]\,
      R => '0'
    );
\bcd_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[19]_i_1_n_0\,
      D => bcd_data0_in(16),
      Q => \bcd_data_reg_n_0_[16]\,
      R => '0'
    );
\bcd_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[19]_i_1_n_0\,
      D => bcd_data0_in(17),
      Q => \bcd_data_reg_n_0_[17]\,
      R => '0'
    );
\bcd_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[19]_i_1_n_0\,
      D => bcd_data0_in(18),
      Q => \bcd_data_reg_n_0_[18]\,
      R => '0'
    );
\bcd_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[19]_i_1_n_0\,
      D => bcd_data0_in(19),
      Q => \bcd_data_reg_n_0_[19]\,
      R => '0'
    );
\bcd_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(1),
      Q => \bcd_data_reg_n_0_[1]\,
      R => '0'
    );
\bcd_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[23]_i_1_n_0\,
      D => bcd_data0_in(20),
      Q => \^q\(0),
      R => '0'
    );
\bcd_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[23]_i_1_n_0\,
      D => bcd_data0_in(21),
      Q => \^q\(1),
      R => '0'
    );
\bcd_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[23]_i_1_n_0\,
      D => bcd_data0_in(22),
      Q => \^q\(2),
      R => '0'
    );
\bcd_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[23]_i_1_n_0\,
      D => bcd_data0_in(23),
      Q => \^q\(3),
      R => '0'
    );
\bcd_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[27]_i_1_n_0\,
      D => bcd_data0_in(24),
      Q => \^q\(4),
      R => '0'
    );
\bcd_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[27]_i_1_n_0\,
      D => bcd_data0_in(25),
      Q => \^q\(5),
      R => '0'
    );
\bcd_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[27]_i_1_n_0\,
      D => bcd_data0_in(26),
      Q => \^q\(6),
      R => '0'
    );
\bcd_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[27]_i_1_n_0\,
      D => bcd_data0_in(27),
      Q => \^q\(7),
      R => '0'
    );
\bcd_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[31]_i_1_n_0\,
      D => bcd_data0_in(28),
      Q => \^q\(8),
      R => '0'
    );
\bcd_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[31]_i_1_n_0\,
      D => bcd_data0_in(29),
      Q => \^q\(9),
      R => '0'
    );
\bcd_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(2),
      Q => \bcd_data_reg_n_0_[2]\,
      R => '0'
    );
\bcd_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[31]_i_1_n_0\,
      D => bcd_data0_in(30),
      Q => \^q\(10),
      R => '0'
    );
\bcd_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[31]_i_1_n_0\,
      D => bcd_data0_in(31),
      Q => \^q\(11),
      R => '0'
    );
\bcd_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(3),
      Q => \bcd_data_reg_n_0_[3]\,
      R => '0'
    );
\bcd_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(4),
      Q => \bcd_data_reg_n_0_[4]\,
      R => '0'
    );
\bcd_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(5),
      Q => \bcd_data_reg_n_0_[5]\,
      R => '0'
    );
\bcd_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(6),
      Q => \bcd_data_reg_n_0_[6]\,
      R => '0'
    );
\bcd_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(7),
      Q => \bcd_data_reg_n_0_[7]\,
      R => '0'
    );
\bcd_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(8),
      Q => \bcd_data_reg_n_0_[8]\,
      R => '0'
    );
\bcd_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \bcd_data[11]_i_1_n_0\,
      D => bcd_data0_in(9),
      Q => \bcd_data_reg_n_0_[9]\,
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \^busy_reg_0\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => busy_i_1_n_0,
      Q => \^busy_reg_0\,
      R => '0'
    );
current_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \out\(0),
      I1 => result_rdy,
      I2 => bcdload,
      O => next_state
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bcd_data_reg_n_0_[17]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \i__carry_i_1__2_n_0\
    );
result_rdy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => result_rdy,
      O => result_rdy_i_1_n_0
    );
result_rdy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => result_rdy_i_1_n_0,
      Q => result_rdy,
      R => '0'
    );
\sh_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sh_counter_reg_n_0_[0]\,
      O => \sh_counter[0]_i_1_n_0\
    );
\sh_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sh_counter_reg_n_0_[1]\,
      I1 => \sh_counter_reg_n_0_[0]\,
      O => \sh_counter[1]_i_1_n_0\
    );
\sh_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1AAA"
    )
        port map (
      I0 => \sh_counter_reg_n_0_[2]\,
      I1 => \sh_counter_reg_n_0_[3]\,
      I2 => \sh_counter_reg_n_0_[1]\,
      I3 => \sh_counter_reg_n_0_[0]\,
      O => \sh_counter[2]_i_1_n_0\
    );
\sh_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => sh_counter
    );
\sh_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => \sh_counter_reg_n_0_[2]\,
      I1 => \sh_counter_reg_n_0_[1]\,
      I2 => \sh_counter_reg_n_0_[0]\,
      I3 => \sh_counter_reg_n_0_[3]\,
      O => \sh_counter[3]_i_2_n_0\
    );
\sh_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => sh_counter,
      D => \sh_counter[0]_i_1_n_0\,
      Q => \sh_counter_reg_n_0_[0]\,
      R => '0'
    );
\sh_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => sh_counter,
      D => \sh_counter[1]_i_1_n_0\,
      Q => \sh_counter_reg_n_0_[1]\,
      R => '0'
    );
\sh_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => sh_counter,
      D => \sh_counter[2]_i_1_n_0\,
      Q => \sh_counter_reg_n_0_[2]\,
      R => '0'
    );
\sh_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => sh_counter,
      D => \sh_counter[3]_i_2_n_0\,
      Q => \sh_counter_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clkDiv is
  port (
    clk125 : out STD_LOGIC;
    clk : out STD_LOGIC;
    mclk_IBUF_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk125_BUFG : in STD_LOGIC
  );
end clkDiv;

architecture STRUCTURE of clkDiv is
  signal \^clk\ : STD_LOGIC;
  signal \q[0]_i_2_n_0\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \NLW_q_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  clk <= \^clk\;
\q[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      O => \q[0]_i_2_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[0]_i_1_n_7\,
      Q => \q_reg_n_0_[0]\
    );
\q_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[0]_i_1_n_0\,
      CO(2) => \q_reg[0]_i_1_n_1\,
      CO(1) => \q_reg[0]_i_1_n_2\,
      CO(0) => \q_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \q_reg[0]_i_1_n_4\,
      O(2) => \q_reg[0]_i_1_n_5\,
      O(1) => \q_reg[0]_i_1_n_6\,
      O(0) => \q_reg[0]_i_1_n_7\,
      S(3) => \q_reg_n_0_[3]\,
      S(2) => clk125_BUFG,
      S(1) => \q_reg_n_0_[1]\,
      S(0) => \q[0]_i_2_n_0\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[0]_i_1_n_6\,
      Q => \q_reg_n_0_[1]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[0]_i_1_n_5\,
      Q => clk125
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[0]_i_1_n_4\,
      Q => \q_reg_n_0_[3]\
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[4]_i_1_n_7\,
      Q => \q_reg_n_0_[4]\
    );
\q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[0]_i_1_n_0\,
      CO(3) => \q_reg[4]_i_1_n_0\,
      CO(2) => \q_reg[4]_i_1_n_1\,
      CO(1) => \q_reg[4]_i_1_n_2\,
      CO(0) => \q_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \q_reg[4]_i_1_n_4\,
      O(2) => \q_reg[4]_i_1_n_5\,
      O(1) => \q_reg[4]_i_1_n_6\,
      O(0) => \q_reg[4]_i_1_n_7\,
      S(3) => \q_reg_n_0_[7]\,
      S(2) => \q_reg_n_0_[6]\,
      S(1) => \q_reg_n_0_[5]\,
      S(0) => \q_reg_n_0_[4]\
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[4]_i_1_n_6\,
      Q => \q_reg_n_0_[5]\
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[4]_i_1_n_5\,
      Q => \q_reg_n_0_[6]\
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[4]_i_1_n_4\,
      Q => \q_reg_n_0_[7]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[8]_i_1_n_7\,
      Q => \q_reg_n_0_[8]\
    );
\q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_q_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_q_reg[8]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \q_reg[8]_i_1_n_6\,
      O(0) => \q_reg[8]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \^clk\,
      S(0) => \q_reg_n_0_[8]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \q_reg[8]_i_1_n_6\,
      Q => \^clk\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity comp4to1 is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ltFar : out STD_LOGIC;
    servsel : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[14]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[12]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[14]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[9]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[12]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[14]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end comp4to1;

architecture STRUCTURE of comp4to1 is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ltOp : STD_LOGIC;
  signal ltOp3_in : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ltOp_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[2]_i_1\ : label is "soft_lutpair6";
begin
  CO(0) <= \^co\(0);
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => DI(2),
      DI(2) => '0',
      DI(1 downto 0) => DI(1 downto 0),
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \^co\(0),
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \q_reg[10]\(0),
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => \q_reg[14]\(2 downto 0)
    );
\ltOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__0/i__carry_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \q_reg[9]\(1),
      DI(2 downto 1) => B"00",
      DI(0) => \q_reg[9]\(0),
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q_reg[8]\(3 downto 0)
    );
\ltOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_ltOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => ltOp3_in,
      CO(1) => \ltOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \q_reg[12]\(1 downto 0),
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => \q_reg[14]_0\(2 downto 0)
    );
\ltOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__1/i__carry_n_0\,
      CO(2) => \ltOp_inferred__1/i__carry_n_1\,
      CO(1) => \ltOp_inferred__1/i__carry_n_2\,
      CO(0) => \ltOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q_reg[9]_0\(3 downto 0),
      O(3 downto 0) => \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q_reg[9]_1\(3 downto 0)
    );
\ltOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_ltOp_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => ltOp,
      CO(1) => \ltOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \ltOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \q_reg[12]_0\(1 downto 0),
      O(3 downto 0) => \NLW_ltOp_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => \q_reg[14]_1\(2 downto 0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^co\(0),
      I1 => ltOp,
      I2 => ltOp3_in,
      O => ltFar
    );
\q[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ltOp3_in,
      I1 => \^co\(0),
      O => servsel(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dispCntrl is
  port (
    bcdload : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bcd_data_reg[23]\ : out STD_LOGIC;
    next_state : in STD_LOGIC;
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    busy_reg : in STD_LOGIC
  );
end dispCntrl;

architecture STRUCTURE of dispCntrl is
  signal \^bcdload\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd_data[23]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[15]_i_1\ : label is "soft_lutpair3";
begin
  bcdload <= \^bcdload\;
\bcd_data[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bcdload\,
      I1 => busy_reg,
      O => \bcd_data_reg[23]\
    );
current_state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => next_state,
      Q => \^bcdload\
    );
\q[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bcdload\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity servoCount is
  port (
    jd3_OBUF : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ld_OBUF : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end servoCount;

architecture STRUCTURE of servoCount is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_7_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_6__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_6__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_6__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_6__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_6__0_n_7\ : STD_LOGIC;
  signal \^count_reg[15]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_6__0_n_7\ : STD_LOGIC;
  signal \^count_reg[7]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_6__0_n_7\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_n_1\ : STD_LOGIC;
  signal \leqOp_carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_carry__0_n_3\ : STD_LOGIC;
  signal leqOp_carry_i_1_n_0 : STD_LOGIC;
  signal leqOp_carry_i_2_n_0 : STD_LOGIC;
  signal \leqOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry_i_5__0_n_0\ : STD_LOGIC;
  signal leqOp_carry_i_6_n_0 : STD_LOGIC;
  signal leqOp_carry_i_7_n_0 : STD_LOGIC;
  signal leqOp_carry_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal output02_out : STD_LOGIC;
  signal output_i_3_n_0 : STD_LOGIC;
  signal output_i_4_n_0 : STD_LOGIC;
  signal output_i_5_n_0 : STD_LOGIC;
  signal \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_reg[12]_i_6__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[12]_i_6__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CO(0) <= \^co\(0);
  S(0) <= \^s\(0);
  \count_reg[15]_0\(0) <= \^count_reg[15]_0\(0);
  \count_reg[7]_0\(1 downto 0) <= \^count_reg[7]_0\(1 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^co\(0),
      I1 => output_i_3_n_0,
      I2 => \geqOp_inferred__0/i__carry__0_n_0\,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^s\(0),
      I1 => \^co\(0),
      I2 => \count_reg[0]_i_7_n_5\,
      I3 => output_i_3_n_0,
      O => \count[0]_i_3__0_n_0\
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(2),
      I1 => \^co\(0),
      I2 => \count_reg[0]_i_7_n_6\,
      I3 => output_i_3_n_0,
      O => \count[0]_i_4__0_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(1),
      I1 => \^co\(0),
      I2 => \count_reg[0]_i_7_n_7\,
      I3 => output_i_3_n_0,
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => count_reg(0),
      I1 => output_i_3_n_0,
      I2 => \^co\(0),
      O => \count[0]_i_6_n_0\
    );
\count[12]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(15),
      I1 => \^co\(0),
      I2 => \count_reg[12]_i_6__0_n_5\,
      I3 => output_i_3_n_0,
      O => \count[12]_i_2__0_n_0\
    );
\count[12]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(14),
      I1 => \^co\(0),
      I2 => \count_reg[12]_i_6__0_n_6\,
      I3 => output_i_3_n_0,
      O => \count[12]_i_3__0_n_0\
    );
\count[12]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg[15]_0\(0),
      I1 => \^co\(0),
      I2 => \count_reg[12]_i_6__0_n_7\,
      I3 => output_i_3_n_0,
      O => \count[12]_i_4__0_n_0\
    );
\count[12]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(12),
      I1 => \^co\(0),
      I2 => \count_reg[8]_i_6__0_n_4\,
      I3 => output_i_3_n_0,
      O => \count[12]_i_5__0_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg[7]_0\(1),
      I1 => \^co\(0),
      I2 => \count_reg[4]_i_6__0_n_5\,
      I3 => output_i_3_n_0,
      O => \count[4]_i_2__0_n_0\
    );
\count[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg[7]_0\(0),
      I1 => \^co\(0),
      I2 => \count_reg[4]_i_6__0_n_6\,
      I3 => output_i_3_n_0,
      O => \count[4]_i_3__0_n_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(5),
      I1 => \^co\(0),
      I2 => \count_reg[4]_i_6__0_n_7\,
      I3 => output_i_3_n_0,
      O => \count[4]_i_4__0_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(4),
      I1 => \^co\(0),
      I2 => \count_reg[0]_i_7_n_4\,
      I3 => output_i_3_n_0,
      O => \count[4]_i_5__0_n_0\
    );
\count[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(11),
      I1 => \^co\(0),
      I2 => \count_reg[8]_i_6__0_n_5\,
      I3 => output_i_3_n_0,
      O => \count[8]_i_2__0_n_0\
    );
\count[8]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(10),
      I1 => \^co\(0),
      I2 => \count_reg[8]_i_6__0_n_6\,
      I3 => output_i_3_n_0,
      O => \count[8]_i_3__0_n_0\
    );
\count[8]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(9),
      I1 => \^co\(0),
      I2 => \count_reg[8]_i_6__0_n_7\,
      I3 => output_i_3_n_0,
      O => \count[8]_i_4__0_n_0\
    );
\count[8]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => count_reg(8),
      I1 => \^co\(0),
      I2 => \count_reg[4]_i_6__0_n_4\,
      I3 => output_i_3_n_0,
      O => \count[8]_i_5__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[0]_i_2_n_7\,
      PRE => btn_IBUF(0),
      Q => count_reg(0)
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^co\(0),
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3) => \count[0]_i_3__0_n_0\,
      S(2) => \count[0]_i_4__0_n_0\,
      S(1) => \count[0]_i_5_n_0\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_7_n_0\,
      CO(2) => \count_reg[0]_i_7_n_1\,
      CO(1) => \count_reg[0]_i_7_n_2\,
      CO(0) => \count_reg[0]_i_7_n_3\,
      CYINIT => count_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[0]_i_7_n_4\,
      O(2) => \count_reg[0]_i_7_n_5\,
      O(1) => \count_reg[0]_i_7_n_6\,
      O(0) => \count_reg[0]_i_7_n_7\,
      S(3) => count_reg(4),
      S(2) => \^s\(0),
      S(1 downto 0) => count_reg(2 downto 1)
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__0_n_1\,
      CO(1) => \count_reg[12]_i_1__0_n_2\,
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3) => \count[12]_i_2__0_n_0\,
      S(2) => \count[12]_i_3__0_n_0\,
      S(1) => \count[12]_i_4__0_n_0\,
      S(0) => \count[12]_i_5__0_n_0\
    );
\count_reg[12]_i_6__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_6__0_n_0\,
      CO(3 downto 2) => \NLW_count_reg[12]_i_6__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[12]_i_6__0_n_2\,
      CO(0) => \count_reg[12]_i_6__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[12]_i_6__0_O_UNCONNECTED\(3),
      O(2) => \count_reg[12]_i_6__0_n_5\,
      O(1) => \count_reg[12]_i_6__0_n_6\,
      O(0) => \count_reg[12]_i_6__0_n_7\,
      S(3) => '0',
      S(2 downto 1) => count_reg(15 downto 14),
      S(0) => \^count_reg[15]_0\(0)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1__0_n_6\,
      Q => \^count_reg[15]_0\(0)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1__0_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1__0_n_4\,
      Q => count_reg(15)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[0]_i_2_n_4\,
      Q => \^s\(0)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3) => \count[4]_i_2__0_n_0\,
      S(2) => \count[4]_i_3__0_n_0\,
      S(1) => \count[4]_i_4__0_n_0\,
      S(0) => \count[4]_i_5__0_n_0\
    );
\count_reg[4]_i_6__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_7_n_0\,
      CO(3) => \count_reg[4]_i_6__0_n_0\,
      CO(2) => \count_reg[4]_i_6__0_n_1\,
      CO(1) => \count_reg[4]_i_6__0_n_2\,
      CO(0) => \count_reg[4]_i_6__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_6__0_n_4\,
      O(2) => \count_reg[4]_i_6__0_n_5\,
      O(1) => \count_reg[4]_i_6__0_n_6\,
      O(0) => \count_reg[4]_i_6__0_n_7\,
      S(3) => count_reg(8),
      S(2 downto 1) => \^count_reg[7]_0\(1 downto 0),
      S(0) => count_reg(5)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1__0_n_5\,
      Q => \^count_reg[7]_0\(0)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1__0_n_4\,
      Q => \^count_reg[7]_0\(1)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3) => \count[8]_i_2__0_n_0\,
      S(2) => \count[8]_i_3__0_n_0\,
      S(1) => \count[8]_i_4__0_n_0\,
      S(0) => \count[8]_i_5__0_n_0\
    );
\count_reg[8]_i_6__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_6__0_n_0\,
      CO(3) => \count_reg[8]_i_6__0_n_0\,
      CO(2) => \count_reg[8]_i_6__0_n_1\,
      CO(1) => \count_reg[8]_i_6__0_n_2\,
      CO(0) => \count_reg[8]_i_6__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_6__0_n_4\,
      O(2) => \count_reg[8]_i_6__0_n_5\,
      O(1) => \count_reg[8]_i_6__0_n_6\,
      O(0) => \count_reg[8]_i_6__0_n_7\,
      S(3 downto 0) => count_reg(12 downto 9)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9)
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \q_reg[3]_1\(0),
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A0"
    )
        port map (
      I0 => count_reg(15),
      I1 => ld_OBUF(1),
      I2 => ld_OBUF(0),
      I3 => count_reg(14),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF8A"
    )
        port map (
      I0 => \^count_reg[15]_0\(0),
      I1 => ld_OBUF(1),
      I2 => ld_OBUF(0),
      I3 => count_reg(12),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A0"
    )
        port map (
      I0 => count_reg(9),
      I1 => ld_OBUF(1),
      I2 => ld_OBUF(0),
      I3 => count_reg(8),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2248"
    )
        port map (
      I0 => count_reg(14),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(15),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1141"
    )
        port map (
      I0 => count_reg(12),
      I1 => \^count_reg[15]_0\(0),
      I2 => ld_OBUF(0),
      I3 => ld_OBUF(1),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2248"
    )
        port map (
      I0 => count_reg(8),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF80"
    )
        port map (
      I0 => count_reg(4),
      I1 => ld_OBUF(1),
      I2 => ld_OBUF(0),
      I3 => count_reg(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF8A"
    )
        port map (
      I0 => \^s\(0),
      I1 => ld_OBUF(1),
      I2 => ld_OBUF(0),
      I3 => count_reg(2),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0462"
    )
        port map (
      I0 => \^count_reg[7]_0\(0),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => \^count_reg[7]_0\(1),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0462"
    )
        port map (
      I0 => count_reg(4),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1141"
    )
        port map (
      I0 => count_reg(2),
      I1 => \^s\(0),
      I2 => ld_OBUF(0),
      I3 => ld_OBUF(1),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \i__carry_i_8__0_n_0\
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_0,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => leqOp_carry_i_1_n_0,
      DI(2) => leqOp_carry_i_2_n_0,
      DI(1) => DI(0),
      DI(0) => '0',
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \leqOp_carry_i_4__0_n_0\,
      S(2) => \leqOp_carry_i_5__0_n_0\,
      S(1) => leqOp_carry_i_6_n_0,
      S(0) => leqOp_carry_i_7_n_0
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_0,
      CO(3) => \^co\(0),
      CO(2) => \leqOp_carry__0_n_1\,
      CO(1) => \leqOp_carry__0_n_2\,
      CO(0) => \leqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \leqOp_carry__0_i_1_n_0\,
      DI(2) => \q_reg[3]_0\(0),
      DI(1) => '0',
      DI(0) => \leqOp_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \leqOp_carry__0_i_4__0_n_0\,
      S(2) => \leqOp_carry__0_i_5_n_0\,
      S(1) => \leqOp_carry__0_i_6_n_0\,
      S(0) => \leqOp_carry__0_i_7_n_0\
    );
\leqOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0717"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(15),
      I2 => ld_OBUF(0),
      I3 => ld_OBUF(1),
      O => \leqOp_carry__0_i_1_n_0\
    );
\leqOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1137"
    )
        port map (
      I0 => count_reg(8),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(9),
      O => \leqOp_carry__0_i_3_n_0\
    );
\leqOp_carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2248"
    )
        port map (
      I0 => count_reg(14),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(15),
      O => \leqOp_carry__0_i_4__0_n_0\
    );
\leqOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1141"
    )
        port map (
      I0 => count_reg(12),
      I1 => \^count_reg[15]_0\(0),
      I2 => ld_OBUF(0),
      I3 => ld_OBUF(1),
      O => \leqOp_carry__0_i_5_n_0\
    );
\leqOp_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \leqOp_carry__0_i_6_n_0\
    );
\leqOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2248"
    )
        port map (
      I0 => count_reg(8),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(9),
      O => \leqOp_carry__0_i_7_n_0\
    );
leqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => \^count_reg[7]_0\(1),
      I1 => \^count_reg[7]_0\(0),
      I2 => ld_OBUF(0),
      I3 => ld_OBUF(1),
      O => leqOp_carry_i_1_n_0
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0035"
    )
        port map (
      I0 => count_reg(4),
      I1 => ld_OBUF(1),
      I2 => ld_OBUF(0),
      I3 => count_reg(5),
      O => leqOp_carry_i_2_n_0
    );
\leqOp_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0462"
    )
        port map (
      I0 => \^count_reg[7]_0\(0),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => \^count_reg[7]_0\(1),
      O => \leqOp_carry_i_4__0_n_0\
    );
\leqOp_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0462"
    )
        port map (
      I0 => count_reg(4),
      I1 => ld_OBUF(0),
      I2 => ld_OBUF(1),
      I3 => count_reg(5),
      O => \leqOp_carry_i_5__0_n_0\
    );
leqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1141"
    )
        port map (
      I0 => count_reg(2),
      I1 => \^s\(0),
      I2 => ld_OBUF(0),
      I3 => ld_OBUF(1),
      O => leqOp_carry_i_6_n_0
    );
leqOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => leqOp_carry_i_7_n_0
    );
output_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => output_i_3_n_0,
      I1 => \geqOp_inferred__0/i__carry__0_n_0\,
      I2 => btn_IBUF(0),
      I3 => \^co\(0),
      O => output02_out
    );
output_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF000000000000"
    )
        port map (
      I0 => count_reg(12),
      I1 => \^count_reg[15]_0\(0),
      I2 => output_i_4_n_0,
      I3 => output_i_5_n_0,
      I4 => count_reg(14),
      I5 => count_reg(15),
      O => output_i_3_n_0
    );
output_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => output_i_4_n_0
    );
output_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => \^count_reg[7]_0\(0),
      I1 => count_reg(5),
      I2 => count_reg(4),
      I3 => \^count_reg[7]_0\(1),
      I4 => count_reg(8),
      I5 => count_reg(9),
      O => output_i_5_n_0
    );
output_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => output02_out,
      D => '0',
      Q => jd3_OBUF,
      S => \q_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sub is
  port (
    \q_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sub;

architecture STRUCTURE of sub is
  signal A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ltOp : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal multOp_i_1_n_0 : STD_LOGIC;
  signal multOp_n_100 : STD_LOGIC;
  signal multOp_n_101 : STD_LOGIC;
  signal multOp_n_102 : STD_LOGIC;
  signal multOp_n_103 : STD_LOGIC;
  signal multOp_n_104 : STD_LOGIC;
  signal multOp_n_105 : STD_LOGIC;
  signal multOp_n_85 : STD_LOGIC;
  signal multOp_n_86 : STD_LOGIC;
  signal multOp_n_87 : STD_LOGIC;
  signal multOp_n_88 : STD_LOGIC;
  signal multOp_n_89 : STD_LOGIC;
  signal multOp_n_90 : STD_LOGIC;
  signal multOp_n_91 : STD_LOGIC;
  signal multOp_n_92 : STD_LOGIC;
  signal multOp_n_93 : STD_LOGIC;
  signal multOp_n_94 : STD_LOGIC;
  signal multOp_n_95 : STD_LOGIC;
  signal multOp_n_96 : STD_LOGIC;
  signal multOp_n_97 : STD_LOGIC;
  signal multOp_n_98 : STD_LOGIC;
  signal multOp_n_99 : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_multOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_multOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_multOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_multOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 21 );
  signal NLW_multOp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of multOp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \mult_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg[9]\ : label is "LD";
begin
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => DI(2 downto 1),
      DI(1) => '0',
      DI(0) => DI(0),
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3 downto 1) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \q_reg[12]\(0)
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => A(3 downto 0),
      S(3 downto 0) => \q_reg[3]\(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => A(7 downto 4),
      S(3 downto 0) => \q_reg[7]\(3 downto 0)
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => A(11 downto 8),
      S(3 downto 0) => \q_reg[11]\(3 downto 0)
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 1) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(12),
      O(3 downto 2) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => A(15),
      O(0) => A(12),
      S(3 downto 1) => B"001",
      S(0) => \q_reg[12]_0\(0)
    );
multOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15) => A(15),
      A(14) => A(15),
      A(13) => A(15),
      A(12 downto 0) => A(12 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_multOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000010001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_multOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000001111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_multOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_multOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_multOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6) => '0',
      OPMODE(5) => multOp_i_1_n_0,
      OPMODE(4) => multOp_i_1_n_0,
      OPMODE(3) => '0',
      OPMODE(2) => ltOp,
      OPMODE(1) => '0',
      OPMODE(0) => ltOp,
      OVERFLOW => NLW_multOp_OVERFLOW_UNCONNECTED,
      P(47 downto 21) => NLW_multOp_P_UNCONNECTED(47 downto 21),
      P(20) => multOp_n_85,
      P(19) => multOp_n_86,
      P(18) => multOp_n_87,
      P(17) => multOp_n_88,
      P(16) => multOp_n_89,
      P(15) => multOp_n_90,
      P(14) => multOp_n_91,
      P(13) => multOp_n_92,
      P(12) => multOp_n_93,
      P(11) => multOp_n_94,
      P(10) => multOp_n_95,
      P(9) => multOp_n_96,
      P(8) => multOp_n_97,
      P(7) => multOp_n_98,
      P(6) => multOp_n_99,
      P(5) => multOp_n_100,
      P(4) => multOp_n_101,
      P(3) => multOp_n_102,
      P(2) => multOp_n_103,
      P(1) => multOp_n_104,
      P(0) => multOp_n_105,
      PATTERNBDETECT => NLW_multOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_multOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_multOp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_multOp_UNDERFLOW_UNCONNECTED
    );
multOp_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ltOp,
      O => multOp_i_1_n_0
    );
\mult_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_105,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(0)
    );
\mult_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_95,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(10)
    );
\mult_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_94,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(11)
    );
\mult_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_93,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(12)
    );
\mult_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_92,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(13)
    );
\mult_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_91,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(14)
    );
\mult_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_90,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(15)
    );
\mult_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_104,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(1)
    );
\mult_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_103,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(2)
    );
\mult_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_102,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(3)
    );
\mult_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_101,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(4)
    );
\mult_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_100,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(5)
    );
\mult_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_99,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(6)
    );
\mult_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_98,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(7)
    );
\mult_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_97,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(8)
    );
\mult_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => multOp_n_96,
      G => E(0),
      GE => '1',
      Q => \q_reg[15]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subreg is
  port (
    \q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[2]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[1]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[1]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[2]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[1]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[2]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    multOp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end subreg;

architecture STRUCTURE of subreg is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \q_reg[1]_2\(1)
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \q_reg[2]_2\(1)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      O => \q_reg[2]_2\(0)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \q_reg[1]_2\(0)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => \q_reg[1]_3\(2)
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => \q_reg[2]_3\(2)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \q_reg[1]_3\(1)
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \q_reg[2]_3\(1)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \q_reg[2]_3\(0)
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      O => \q_reg[1]_3\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => \q_reg[2]_0\(1)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \q_reg[1]_0\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      O => \q_reg[1]_0\(2)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \q_reg[2]_0\(0)
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \q_reg[2]_1\(3)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \q_reg[1]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \q_reg[1]_0\(0)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \q_reg[2]_1\(2)
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => \q_reg[1]_1\(3)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \q_reg[2]_1\(1)
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \q_reg[1]_1\(2)
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \q_reg[2]_1\(0)
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \q_reg[1]_1\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \q_reg[1]_1\(0)
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \q_reg[3]_1\(0)
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => \q_reg[3]_0\(2)
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \q_reg[3]_0\(1)
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      O => \q_reg[3]_0\(0)
    );
ltOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => DI(2)
    );
ltOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => DI(1)
    );
ltOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => DI(0)
    );
ltOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => S(3)
    );
ltOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => S(2)
    );
ltOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => S(1)
    );
ltOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(0)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(10),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(11),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(12),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(13),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(14),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(15),
      Q => \^q\(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(1),
      Q => \^q\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(2),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(7),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(8),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => multOp(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subreg_0 is
  port (
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    multOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    multOp_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    multOp_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    multOp_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    multOp_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[12]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_reg : in STD_LOGIC_VECTOR ( 12 downto 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of subreg_0 : entity is "subreg";
end subreg_0;

architecture STRUCTURE of subreg_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
begin
  Q(12 downto 0) <= \^q\(12 downto 0);
\ltOp_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => multOp_3(0)
    );
\ltOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => DI(2)
    );
\ltOp_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => DI(1)
    );
\ltOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => DI(0)
    );
\ltOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => S(3)
    );
\ltOp_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => S(2)
    );
\ltOp_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => S(1)
    );
\ltOp_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => S(0)
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \q_reg[12]_0\(7),
      O => multOp_0(3)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_reg[12]_0\(6),
      O => multOp_0(2)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg[12]_0\(5),
      O => multOp_0(1)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[12]_0\(4),
      O => multOp_0(0)
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \q_reg[12]_0\(11),
      O => multOp_1(3)
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \q_reg[12]_0\(10),
      O => multOp_1(2)
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \q_reg[12]_0\(9),
      O => multOp_1(1)
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \q_reg[12]_0\(8),
      O => multOp_1(0)
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \q_reg[12]_0\(12),
      O => multOp_2(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \q_reg[12]_0\(3),
      O => multOp(3)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q_reg[12]_0\(2),
      O => multOp(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg[12]_0\(1),
      O => multOp(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \q_reg[12]_0\(0),
      O => multOp(0)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(10),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(11),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(12),
      Q => \^q\(12)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(1),
      Q => \^q\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(2),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(7),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(8),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subreg_1 is
  port (
    ld_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    output_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ltFar : in STD_LOGIC;
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    servsel : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[13]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[14]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of subreg_1 : entity is "subreg";
end subreg_1;

architecture STRUCTURE of subreg_1 is
  signal \^ld_obuf\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  ld_OBUF(2 downto 0) <= \^ld_obuf\(2 downto 0);
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC8C"
    )
        port map (
      I0 => \^ld_obuf\(2),
      I1 => \count_reg[13]\(2),
      I2 => \^ld_obuf\(1),
      I3 => \count_reg[13]\(1),
      O => \count_reg[15]\(0)
    );
\leqOp_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ld_obuf\(2),
      I1 => \^ld_obuf\(1),
      I2 => \count_reg[13]\(3),
      O => \count_reg[15]_0\(0)
    );
\leqOp_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ld_obuf\(2),
      I1 => \^ld_obuf\(1),
      I2 => \count_reg[13]\(0),
      O => DI(0)
    );
\output_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => btn_IBUF(0),
      I1 => \^ld_obuf\(2),
      I2 => \^ld_obuf\(1),
      I3 => \count_reg[14]\(0),
      O => output_reg
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \out\(0),
      CLR => btn_IBUF(0),
      D => ltFar,
      Q => \^ld_obuf\(0)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \out\(0),
      CLR => btn_IBUF(0),
      D => servsel(0),
      Q => \^ld_obuf\(1)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => \out\(0),
      CLR => btn_IBUF(0),
      D => CO(0),
      Q => \^ld_obuf\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subreg_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_reg : in STD_LOGIC_VECTOR ( 12 downto 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of subreg_2 : entity is "subreg";
end subreg_2;

architecture STRUCTURE of subreg_2 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(12),
      Q => Q(12)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => count_reg(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subreg_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bcdload : in STD_LOGIC;
    \q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of subreg_3 : entity is "subreg";
end subreg_3;

architecture STRUCTURE of subreg_3 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => bcdload,
      CLR => btn_IBUF(0),
      D => \q_reg[15]_0\(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity subreg_4 is
  port (
    a_to_g_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \a_to_g[0]\ : out STD_LOGIC;
    \a_to_g[2]\ : out STD_LOGIC;
    \a_to_g[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \an[2]\ : out STD_LOGIC;
    \an[1]\ : out STD_LOGIC;
    CONV_INTEGER : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \clkdiv_reg[19]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of subreg_4 : entity is "subreg";
end subreg_4;

architecture STRUCTURE of subreg_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^a_to_g[0]\ : STD_LOGIC;
  signal \^a_to_g[1]\ : STD_LOGIC;
  signal \^a_to_g[2]\ : STD_LOGIC;
  signal \a_to_g_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal segout : STD_LOGIC_VECTOR ( 13 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_to_g_OBUF[4]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \a_to_g_OBUF[5]_inst_i_1\ : label is "soft_lutpair5";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \a_to_g[0]\ <= \^a_to_g[0]\;
  \a_to_g[1]\ <= \^a_to_g[1]\;
  \a_to_g[2]\ <= \^a_to_g[2]\;
\a_to_g_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00180043"
    )
        port map (
      I0 => \a_to_g_OBUF[3]_inst_i_2_n_0\,
      I1 => \^a_to_g[1]\,
      I2 => \^a_to_g[2]\,
      I3 => CONV_INTEGER(2),
      I4 => \^a_to_g[0]\,
      O => a_to_g_OBUF(0)
    );
\a_to_g_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(5),
      I1 => CONV_INTEGER(0),
      I2 => \^q\(8),
      I3 => CONV_INTEGER(1),
      I4 => \^q\(2),
      O => \a_to_g_OBUF[3]_inst_i_2_n_0\
    );
\a_to_g_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"020000EF"
    )
        port map (
      I0 => \^a_to_g[0]\,
      I1 => CONV_INTEGER(2),
      I2 => \^a_to_g[2]\,
      I3 => \^a_to_g[1]\,
      I4 => \clkdiv_reg[19]\,
      O => a_to_g_OBUF(1)
    );
\a_to_g_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001401EF"
    )
        port map (
      I0 => CONV_INTEGER(2),
      I1 => \^a_to_g[0]\,
      I2 => \^a_to_g[2]\,
      I3 => \^a_to_g[1]\,
      I4 => \clkdiv_reg[19]\,
      O => a_to_g_OBUF(2)
    );
\a_to_g_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04400014"
    )
        port map (
      I0 => CONV_INTEGER(2),
      I1 => \^a_to_g[2]\,
      I2 => \^a_to_g[1]\,
      I3 => \^a_to_g[0]\,
      I4 => \clkdiv_reg[19]\,
      O => a_to_g_OBUF(3)
    );
\a_to_g_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => segout(9),
      I1 => CONV_INTEGER(0),
      I2 => segout(13),
      I3 => CONV_INTEGER(1),
      I4 => segout(5),
      O => \^a_to_g[2]\
    );
\a_to_g_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^q\(4),
      I1 => CONV_INTEGER(0),
      I2 => \^q\(7),
      I3 => CONV_INTEGER(1),
      I4 => \^q\(1),
      O => \^a_to_g[1]\
    );
\a_to_g_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^q\(3),
      I1 => CONV_INTEGER(0),
      I2 => \^q\(6),
      I3 => CONV_INTEGER(1),
      I4 => \^q\(0),
      O => \^a_to_g[0]\
    );
\an_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => segout(9),
      I2 => \^q\(3),
      I3 => CONV_INTEGER(0),
      I4 => \^q\(5),
      O => \an[1]\
    );
\an_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => segout(13),
      O => \an[2]\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(6),
      Q => \^q\(4)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(7),
      Q => \^q\(5)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(8),
      Q => \^q\(6)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(9),
      Q => segout(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(10),
      Q => \^q\(7)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(11),
      Q => \^q\(8)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(1),
      Q => segout(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(2),
      Q => \^q\(1)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(3),
      Q => \^q\(2)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(4),
      Q => \^q\(3)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => E(0),
      CLR => btn_IBUF(0),
      D => D(5),
      Q => segout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity trigger is
  port (
    count_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \FSM_onehot_current_state_reg[0]\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end trigger;

architecture STRUCTURE of trigger is
  signal \FSM_onehot_current_state[5]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[5]_i_3_n_1\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[5]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[5]_i_3_n_3\ : STD_LOGIC;
  signal \cntrl/gtOp\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[16]_i_2_n_0\ : STD_LOGIC;
  signal \count[16]_i_3_n_0\ : STD_LOGIC;
  signal \count[16]_i_4_n_0\ : STD_LOGIC;
  signal \count[16]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal \^count_reg\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_6_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal geqOp : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal leqOp : STD_LOGIC;
  signal \leqOp_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_n_1\ : STD_LOGIC;
  signal \leqOp_carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_carry__0_n_3\ : STD_LOGIC;
  signal \leqOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \leqOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \leqOp_carry__1_n_3\ : STD_LOGIC;
  signal \leqOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \leqOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal leqOp_carry_i_3_n_0 : STD_LOGIC;
  signal leqOp_carry_i_4_n_0 : STD_LOGIC;
  signal leqOp_carry_i_5_n_0 : STD_LOGIC;
  signal leqOp_carry_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal output_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FSM_onehot_current_state_reg[5]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_current_state_reg[5]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_reg[16]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[16]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_leqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of output_i_1 : label is "soft_lutpair7";
begin
  \FSM_onehot_current_state_reg[0]\ <= \^fsm_onehot_current_state_reg[0]\;
  count_reg(12 downto 0) <= \^count_reg\(12 downto 0);
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => btn_IBUF(0),
      I1 => \^fsm_onehot_current_state_reg[0]\,
      I2 => \cntrl/gtOp\,
      O => AR(0)
    );
\FSM_onehot_current_state[5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(2),
      I1 => \^count_reg\(1),
      O => \FSM_onehot_current_state[5]_i_10_n_0\
    );
\FSM_onehot_current_state[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => \count_reg__0\(6),
      O => \FSM_onehot_current_state[5]_i_11_n_0\
    );
\FSM_onehot_current_state[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(11),
      I1 => \^count_reg\(12),
      O => \FSM_onehot_current_state[5]_i_4_n_0\
    );
\FSM_onehot_current_state[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(9),
      I1 => \^count_reg\(10),
      O => \FSM_onehot_current_state[5]_i_5_n_0\
    );
\FSM_onehot_current_state[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(8),
      I1 => \^count_reg\(7),
      O => \FSM_onehot_current_state[5]_i_6_n_0\
    );
\FSM_onehot_current_state[5]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(0),
      O => \FSM_onehot_current_state[5]_i_7_n_0\
    );
\FSM_onehot_current_state[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(5),
      I1 => \^count_reg\(6),
      O => \FSM_onehot_current_state[5]_i_8_n_0\
    );
\FSM_onehot_current_state[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(4),
      I1 => \^count_reg\(3),
      O => \FSM_onehot_current_state[5]_i_9_n_0\
    );
\FSM_onehot_current_state_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_current_state_reg[5]_i_3_n_0\,
      CO(3) => \NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \cntrl/gtOp\,
      CO(1) => \FSM_onehot_current_state_reg[5]_i_2_n_2\,
      CO(0) => \FSM_onehot_current_state_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_current_state_reg[5]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FSM_onehot_current_state[5]_i_4_n_0\,
      S(1) => \FSM_onehot_current_state[5]_i_5_n_0\,
      S(0) => \FSM_onehot_current_state[5]_i_6_n_0\
    );
\FSM_onehot_current_state_reg[5]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_onehot_current_state_reg[5]_i_3_n_0\,
      CO(2) => \FSM_onehot_current_state_reg[5]_i_3_n_1\,
      CO(1) => \FSM_onehot_current_state_reg[5]_i_3_n_2\,
      CO(0) => \FSM_onehot_current_state_reg[5]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \FSM_onehot_current_state[5]_i_7_n_0\,
      O(3 downto 0) => \NLW_FSM_onehot_current_state_reg[5]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_current_state[5]_i_8_n_0\,
      S(2) => \FSM_onehot_current_state[5]_i_9_n_0\,
      S(1) => \FSM_onehot_current_state[5]_i_10_n_0\,
      S(0) => \FSM_onehot_current_state[5]_i_11_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => leqOp,
      I2 => plusOp(3),
      I3 => geqOp,
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => leqOp,
      I2 => plusOp(2),
      I3 => geqOp,
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => leqOp,
      I2 => plusOp(1),
      I3 => geqOp,
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => geqOp,
      I1 => \count_reg__0\(0),
      I2 => leqOp,
      O => \count[0]_i_5__0_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(8),
      I1 => leqOp,
      I2 => plusOp(15),
      I3 => geqOp,
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(7),
      I1 => leqOp,
      I2 => plusOp(14),
      I3 => geqOp,
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(6),
      I1 => leqOp,
      I2 => plusOp(13),
      I3 => geqOp,
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(5),
      I1 => leqOp,
      I2 => plusOp(12),
      I3 => geqOp,
      O => \count[12]_i_5_n_0\
    );
\count[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(12),
      I1 => leqOp,
      I2 => plusOp(19),
      I3 => geqOp,
      O => \count[16]_i_2_n_0\
    );
\count[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(11),
      I1 => leqOp,
      I2 => plusOp(18),
      I3 => geqOp,
      O => \count[16]_i_3_n_0\
    );
\count[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(10),
      I1 => leqOp,
      I2 => plusOp(17),
      I3 => geqOp,
      O => \count[16]_i_4_n_0\
    );
\count[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(9),
      I1 => leqOp,
      I2 => plusOp(16),
      I3 => geqOp,
      O => \count[16]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => leqOp,
      I2 => plusOp(7),
      I3 => geqOp,
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => leqOp,
      I2 => plusOp(6),
      I3 => geqOp,
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \count_reg__0\(5),
      I1 => leqOp,
      I2 => plusOp(5),
      I3 => geqOp,
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => leqOp,
      I2 => plusOp(4),
      I3 => geqOp,
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(4),
      I1 => leqOp,
      I2 => plusOp(11),
      I3 => geqOp,
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(3),
      I1 => leqOp,
      I2 => plusOp(10),
      I3 => geqOp,
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(2),
      I1 => leqOp,
      I2 => plusOp(9),
      I3 => geqOp,
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^count_reg\(1),
      I1 => leqOp,
      I2 => plusOp(8),
      I3 => geqOp,
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \count_reg[0]_i_1_n_7\,
      PRE => btn_IBUF(0),
      Q => \count_reg__0\(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => leqOp,
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3) => \count[0]_i_2_n_0\,
      S(2) => \count[0]_i_3_n_0\,
      S(1) => \count[0]_i_4_n_0\,
      S(0) => \count[0]_i_5__0_n_0\
    );
\count_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_6_n_0\,
      CO(2) => \count_reg[0]_i_6_n_1\,
      CO(1) => \count_reg[0]_i_6_n_2\,
      CO(0) => \count_reg[0]_i_6_n_3\,
      CYINIT => \count_reg__0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => \count_reg__0\(4 downto 1)
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1_n_5\,
      Q => \^count_reg\(3)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1_n_4\,
      Q => \^count_reg\(4)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1_n_7\,
      Q => \^count_reg\(5)
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_6_n_0\,
      CO(3) => \count_reg[12]_i_6_n_0\,
      CO(2) => \count_reg[12]_i_6_n_1\,
      CO(1) => \count_reg[12]_i_6_n_2\,
      CO(0) => \count_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => \^count_reg\(9 downto 6)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1_n_6\,
      Q => \^count_reg\(6)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1_n_5\,
      Q => \^count_reg\(7)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[12]_i_1_n_4\,
      Q => \^count_reg\(8)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[16]_i_1_n_7\,
      Q => \^count_reg\(9)
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3) => \count[16]_i_2_n_0\,
      S(2) => \count[16]_i_3_n_0\,
      S(1) => \count[16]_i_4_n_0\,
      S(0) => \count[16]_i_5_n_0\
    );
\count_reg[16]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_6_n_0\,
      CO(3 downto 2) => \NLW_count_reg[16]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[16]_i_6_n_2\,
      CO(0) => \count_reg[16]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[16]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => \^count_reg\(12 downto 10)
    );
\count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[16]_i_1_n_6\,
      Q => \^count_reg\(10)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[16]_i_1_n_5\,
      Q => \^count_reg\(11)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[16]_i_1_n_4\,
      Q => \^count_reg\(12)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[0]_i_1_n_6\,
      Q => \count_reg__0\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[0]_i_1_n_5\,
      Q => \count_reg__0\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[0]_i_1_n_4\,
      Q => \count_reg__0\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1_n_7\,
      Q => \count_reg__0\(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_6_n_0\,
      CO(3) => \count_reg[4]_i_6_n_0\,
      CO(2) => \count_reg[4]_i_6_n_1\,
      CO(1) => \count_reg[4]_i_6_n_2\,
      CO(0) => \count_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 2) => \^count_reg\(1 downto 0),
      S(1 downto 0) => \count_reg__0\(6 downto 5)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1_n_6\,
      Q => \count_reg__0\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1_n_5\,
      Q => \count_reg__0\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[4]_i_1_n_4\,
      Q => \^count_reg\(0)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1_n_7\,
      Q => \^count_reg\(1)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_6_n_0\,
      CO(3) => \count_reg[8]_i_6_n_0\,
      CO(2) => \count_reg[8]_i_6_n_1\,
      CO(1) => \count_reg[8]_i_6_n_2\,
      CO(0) => \count_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => \^count_reg\(5 downto 2)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \count_reg[8]_i_1_n_6\,
      Q => \^count_reg\(2)
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_0,
      DI(2) => '0',
      DI(1) => geqOp_carry_i_2_n_0,
      DI(0) => geqOp_carry_i_3_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_4_n_0,
      S(2) => geqOp_carry_i_5_n_0,
      S(1) => geqOp_carry_i_6_n_0,
      S(0) => geqOp_carry_i_7_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3) => \geqOp_carry__0_n_0\,
      CO(2) => \geqOp_carry__0_n_1\,
      CO(1) => \geqOp_carry__0_n_2\,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \^count_reg\(8),
      DI(2) => '0',
      DI(1) => \geqOp_carry__0_i_1_n_0\,
      DI(0) => \^count_reg\(2),
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__0_i_2_n_0\,
      S(2) => \geqOp_carry__0_i_3_n_0\,
      S(1) => \geqOp_carry__0_i_4_n_0\,
      S(0) => \geqOp_carry__0_i_5_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_reg\(3),
      I1 => \^count_reg\(4),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(7),
      I1 => \^count_reg\(8),
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^count_reg\(5),
      I1 => \^count_reg\(6),
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(4),
      I1 => \^count_reg\(3),
      O => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(1),
      I1 => \^count_reg\(2),
      O => \geqOp_carry__0_i_5_n_0\
    );
\geqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_geqOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp,
      CO(0) => \geqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \geqOp_carry__1_i_1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_geqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \geqOp_carry__1_i_2_n_0\,
      S(0) => \geqOp_carry__1_i_3_n_0\
    );
\geqOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^count_reg\(11),
      I1 => \^count_reg\(12),
      O => \geqOp_carry__1_i_1_n_0\
    );
\geqOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(12),
      I1 => \^count_reg\(11),
      O => \geqOp_carry__1_i_2_n_0\
    );
\geqOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^count_reg\(9),
      I1 => \^count_reg\(10),
      O => \geqOp_carry__1_i_3_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => \^count_reg\(0),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(3),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => \count_reg__0\(6),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => \count_reg__0\(5),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(2),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      O => geqOp_carry_i_7_n_0
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_0,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => \leqOp_carry_i_1__0_n_0\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \leqOp_carry_i_2__0_n_0\,
      S(2) => leqOp_carry_i_3_n_0,
      S(1) => leqOp_carry_i_4_n_0,
      S(0) => leqOp_carry_i_5_n_0
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_0,
      CO(3) => \leqOp_carry__0_n_0\,
      CO(2) => \leqOp_carry__0_n_1\,
      CO(1) => \leqOp_carry__0_n_2\,
      CO(0) => \leqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \leqOp_carry__0_i_1__0_n_0\,
      S(2) => \leqOp_carry__0_i_2__0_n_0\,
      S(1) => \leqOp_carry__0_i_3__0_n_0\,
      S(0) => \leqOp_carry__0_i_4_n_0\
    );
\leqOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(8),
      I1 => \^count_reg\(7),
      O => \leqOp_carry__0_i_1__0_n_0\
    );
\leqOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(5),
      I1 => \^count_reg\(6),
      O => \leqOp_carry__0_i_2__0_n_0\
    );
\leqOp_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(4),
      I1 => \^count_reg\(3),
      O => \leqOp_carry__0_i_3__0_n_0\
    );
\leqOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(2),
      I1 => \^count_reg\(1),
      O => \leqOp_carry__0_i_4_n_0\
    );
\leqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \leqOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_leqOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => leqOp,
      CO(0) => \leqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_leqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \leqOp_carry__1_i_1_n_0\,
      S(0) => \leqOp_carry__1_i_2_n_0\
    );
\leqOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(11),
      I1 => \^count_reg\(12),
      O => \leqOp_carry__1_i_1_n_0\
    );
\leqOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(9),
      I1 => \^count_reg\(10),
      O => \leqOp_carry__1_i_2_n_0\
    );
\leqOp_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(0),
      O => \leqOp_carry_i_1__0_n_0\
    );
\leqOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^count_reg\(0),
      I1 => \count_reg__0\(6),
      O => \leqOp_carry_i_2__0_n_0\
    );
leqOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => \count_reg__0\(5),
      O => leqOp_carry_i_3_n_0
    );
leqOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(2),
      O => leqOp_carry_i_4_n_0
    );
leqOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      O => leqOp_carry_i_5_n_0
    );
output_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[0]\,
      I1 => btn_IBUF(0),
      I2 => leqOp,
      O => output_i_1_n_0
    );
output_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => output_i_1_n_0,
      Q => \^fsm_onehot_current_state_reg[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity us_control is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    jb2_IBUF : in STD_LOGIC;
    output_reg : in STD_LOGIC;
    clk125_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end us_control;

architecture STRUCTURE of us_control is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[1]\ : signal is "yes";
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "calc:010000,compare:100000,waiting:000100,echo:001000,done:000001,trigger:000010";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "calc:010000,compare:100000,waiting:000100,echo:001000,done:000001,trigger:000010";
  attribute KEEP of \FSM_onehot_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "calc:010000,compare:100000,waiting:000100,echo:001000,done:000001,trigger:000010";
  attribute KEEP of \FSM_onehot_current_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "calc:010000,compare:100000,waiting:000100,echo:001000,done:000001,trigger:000010";
  attribute KEEP of \FSM_onehot_current_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "calc:010000,compare:100000,waiting:000100,echo:001000,done:000001,trigger:000010";
  attribute KEEP of \FSM_onehot_current_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "calc:010000,compare:100000,waiting:000100,echo:001000,done:000001,trigger:000010";
  attribute KEEP of \FSM_onehot_current_state_reg[5]\ : label is "yes";
begin
  \out\(3 downto 0) <= \^out\(3 downto 0);
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^out\(3),
      I1 => output_reg,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => output_reg,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => output_reg,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => jb2_IBUF,
      I3 => \^out\(0),
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => jb2_IBUF,
      I1 => \^out\(0),
      I2 => \^out\(1),
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(1),
      I1 => jb2_IBUF,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => AR(0),
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \^out\(0)
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_current_state[3]_i_1_n_0\,
      Q => \^out\(1)
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_current_state[4]_i_1_n_0\,
      Q => \^out\(2)
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk125_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^out\(2),
      Q => \^out\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity x7segb8 is
  port (
    CONV_INTEGER : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a_to_g_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_to_g[6]\ : out STD_LOGIC;
    an_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mclk_IBUF_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[10]\ : in STD_LOGIC;
    \q_reg[9]\ : in STD_LOGIC;
    \q_reg[8]\ : in STD_LOGIC;
    \q_reg[10]_0\ : in STD_LOGIC;
    \q_reg[12]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end x7segb8;

architecture STRUCTURE of x7segb8 is
  signal \^conv_integer\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^a_to_g[6]\ : STD_LOGIC;
  signal \a_to_g_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \a_to_g_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \clkdiv[0]_i_2_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[0]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[10]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[11]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[12]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[13]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[14]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[15]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[16]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[1]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[2]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[3]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[4]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[5]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[6]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[7]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[8]\ : STD_LOGIC;
  signal \clkdiv_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an_OBUF[1]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an_OBUF[2]_inst_i_1\ : label is "soft_lutpair4";
begin
  CONV_INTEGER(2 downto 0) <= \^conv_integer\(2 downto 0);
  \a_to_g[6]\ <= \^a_to_g[6]\;
\a_to_g_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30CC0488"
    )
        port map (
      I0 => \^conv_integer\(2),
      I1 => \^a_to_g[6]\,
      I2 => \q_reg[8]\,
      I3 => \a_to_g_OBUF[2]_inst_i_3_n_0\,
      I4 => \q_reg[9]\,
      O => a_to_g_OBUF(0)
    );
\a_to_g_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E500E020"
    )
        port map (
      I0 => \q_reg[10]\,
      I1 => \^conv_integer\(2),
      I2 => \^a_to_g[6]\,
      I3 => \a_to_g_OBUF[2]_inst_i_2_n_0\,
      I4 => \q_reg[9]\,
      O => a_to_g_OBUF(1)
    );
\a_to_g_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC0F0E0"
    )
        port map (
      I0 => \^conv_integer\(2),
      I1 => \^a_to_g[6]\,
      I2 => \a_to_g_OBUF[2]_inst_i_2_n_0\,
      I3 => \q_reg[9]\,
      I4 => \a_to_g_OBUF[2]_inst_i_3_n_0\,
      O => a_to_g_OBUF(2)
    );
\a_to_g_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505540400005404"
    )
        port map (
      I0 => \^conv_integer\(2),
      I1 => Q(0),
      I2 => \^conv_integer\(1),
      I3 => Q(6),
      I4 => \^conv_integer\(0),
      I5 => Q(3),
      O => \a_to_g_OBUF[2]_inst_i_2_n_0\
    );
\a_to_g_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505540400005404"
    )
        port map (
      I0 => \^conv_integer\(2),
      I1 => Q(1),
      I2 => \^conv_integer\(1),
      I3 => Q(7),
      I4 => \^conv_integer\(0),
      I5 => Q(4),
      O => \a_to_g_OBUF[2]_inst_i_3_n_0\
    );
\a_to_g_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => \^conv_integer\(2),
      I1 => Q(2),
      I2 => \^conv_integer\(1),
      I3 => Q(8),
      I4 => \^conv_integer\(0),
      I5 => Q(5),
      O => \^a_to_g[6]\
    );
\an_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^conv_integer\(2),
      I1 => \^conv_integer\(0),
      I2 => \^conv_integer\(1),
      O => an_OBUF(0)
    );
\an_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => \q_reg[10]_0\,
      I1 => \q_reg[12]\,
      I2 => \^conv_integer\(1),
      I3 => \^conv_integer\(0),
      I4 => \^conv_integer\(2),
      O => an_OBUF(1)
    );
\an_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \q_reg[12]\,
      I1 => \^conv_integer\(0),
      I2 => \^conv_integer\(1),
      I3 => \^conv_integer\(2),
      O => an_OBUF(2)
    );
\clkdiv[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clkdiv_reg_n_0_[0]\,
      O => \clkdiv[0]_i_2_n_0\
    );
\clkdiv_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[0]_i_1_n_7\,
      Q => \clkdiv_reg_n_0_[0]\
    );
\clkdiv_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clkdiv_reg[0]_i_1_n_0\,
      CO(2) => \clkdiv_reg[0]_i_1_n_1\,
      CO(1) => \clkdiv_reg[0]_i_1_n_2\,
      CO(0) => \clkdiv_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clkdiv_reg[0]_i_1_n_4\,
      O(2) => \clkdiv_reg[0]_i_1_n_5\,
      O(1) => \clkdiv_reg[0]_i_1_n_6\,
      O(0) => \clkdiv_reg[0]_i_1_n_7\,
      S(3) => \clkdiv_reg_n_0_[3]\,
      S(2) => \clkdiv_reg_n_0_[2]\,
      S(1) => \clkdiv_reg_n_0_[1]\,
      S(0) => \clkdiv[0]_i_2_n_0\
    );
\clkdiv_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[8]_i_1_n_5\,
      Q => \clkdiv_reg_n_0_[10]\
    );
\clkdiv_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[8]_i_1_n_4\,
      Q => \clkdiv_reg_n_0_[11]\
    );
\clkdiv_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[12]_i_1_n_7\,
      Q => \clkdiv_reg_n_0_[12]\
    );
\clkdiv_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[8]_i_1_n_0\,
      CO(3) => \clkdiv_reg[12]_i_1_n_0\,
      CO(2) => \clkdiv_reg[12]_i_1_n_1\,
      CO(1) => \clkdiv_reg[12]_i_1_n_2\,
      CO(0) => \clkdiv_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[12]_i_1_n_4\,
      O(2) => \clkdiv_reg[12]_i_1_n_5\,
      O(1) => \clkdiv_reg[12]_i_1_n_6\,
      O(0) => \clkdiv_reg[12]_i_1_n_7\,
      S(3) => \clkdiv_reg_n_0_[15]\,
      S(2) => \clkdiv_reg_n_0_[14]\,
      S(1) => \clkdiv_reg_n_0_[13]\,
      S(0) => \clkdiv_reg_n_0_[12]\
    );
\clkdiv_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[12]_i_1_n_6\,
      Q => \clkdiv_reg_n_0_[13]\
    );
\clkdiv_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[12]_i_1_n_5\,
      Q => \clkdiv_reg_n_0_[14]\
    );
\clkdiv_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[12]_i_1_n_4\,
      Q => \clkdiv_reg_n_0_[15]\
    );
\clkdiv_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[16]_i_1_n_7\,
      Q => \clkdiv_reg_n_0_[16]\
    );
\clkdiv_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[12]_i_1_n_0\,
      CO(3) => \NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clkdiv_reg[16]_i_1_n_1\,
      CO(1) => \clkdiv_reg[16]_i_1_n_2\,
      CO(0) => \clkdiv_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[16]_i_1_n_4\,
      O(2) => \clkdiv_reg[16]_i_1_n_5\,
      O(1) => \clkdiv_reg[16]_i_1_n_6\,
      O(0) => \clkdiv_reg[16]_i_1_n_7\,
      S(3 downto 1) => \^conv_integer\(2 downto 0),
      S(0) => \clkdiv_reg_n_0_[16]\
    );
\clkdiv_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[16]_i_1_n_6\,
      Q => \^conv_integer\(0)
    );
\clkdiv_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[16]_i_1_n_5\,
      Q => \^conv_integer\(1)
    );
\clkdiv_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[16]_i_1_n_4\,
      Q => \^conv_integer\(2)
    );
\clkdiv_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[0]_i_1_n_6\,
      Q => \clkdiv_reg_n_0_[1]\
    );
\clkdiv_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[0]_i_1_n_5\,
      Q => \clkdiv_reg_n_0_[2]\
    );
\clkdiv_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[0]_i_1_n_4\,
      Q => \clkdiv_reg_n_0_[3]\
    );
\clkdiv_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[4]_i_1_n_7\,
      Q => \clkdiv_reg_n_0_[4]\
    );
\clkdiv_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[0]_i_1_n_0\,
      CO(3) => \clkdiv_reg[4]_i_1_n_0\,
      CO(2) => \clkdiv_reg[4]_i_1_n_1\,
      CO(1) => \clkdiv_reg[4]_i_1_n_2\,
      CO(0) => \clkdiv_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[4]_i_1_n_4\,
      O(2) => \clkdiv_reg[4]_i_1_n_5\,
      O(1) => \clkdiv_reg[4]_i_1_n_6\,
      O(0) => \clkdiv_reg[4]_i_1_n_7\,
      S(3) => \clkdiv_reg_n_0_[7]\,
      S(2) => \clkdiv_reg_n_0_[6]\,
      S(1) => \clkdiv_reg_n_0_[5]\,
      S(0) => \clkdiv_reg_n_0_[4]\
    );
\clkdiv_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[4]_i_1_n_6\,
      Q => \clkdiv_reg_n_0_[5]\
    );
\clkdiv_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[4]_i_1_n_5\,
      Q => \clkdiv_reg_n_0_[6]\
    );
\clkdiv_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[4]_i_1_n_4\,
      Q => \clkdiv_reg_n_0_[7]\
    );
\clkdiv_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[8]_i_1_n_7\,
      Q => \clkdiv_reg_n_0_[8]\
    );
\clkdiv_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[4]_i_1_n_0\,
      CO(3) => \clkdiv_reg[8]_i_1_n_0\,
      CO(2) => \clkdiv_reg[8]_i_1_n_1\,
      CO(1) => \clkdiv_reg[8]_i_1_n_2\,
      CO(0) => \clkdiv_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[8]_i_1_n_4\,
      O(2) => \clkdiv_reg[8]_i_1_n_5\,
      O(1) => \clkdiv_reg[8]_i_1_n_6\,
      O(0) => \clkdiv_reg[8]_i_1_n_7\,
      S(3) => \clkdiv_reg_n_0_[11]\,
      S(2) => \clkdiv_reg_n_0_[10]\,
      S(1) => \clkdiv_reg_n_0_[9]\,
      S(0) => \clkdiv_reg_n_0_[8]\
    );
\clkdiv_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_IBUF_BUFG,
      CE => '1',
      CLR => btn_IBUF(0),
      D => \clkdiv_reg[8]_i_1_n_6\,
      Q => \clkdiv_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity displayTop is
  port (
    a_to_g_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    mclk_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end displayTop;

architecture STRUCTURE of displayTop is
  signal CONV_INTEGER : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal bcd_n_10 : STD_LOGIC;
  signal bcd_n_11 : STD_LOGIC;
  signal bcd_n_12 : STD_LOGIC;
  signal bcd_n_8 : STD_LOGIC;
  signal bcd_n_9 : STD_LOGIC;
  signal bcdload : STD_LOGIC;
  signal bcdreg_n_0 : STD_LOGIC;
  signal bcdreg_n_1 : STD_LOGIC;
  signal bcdreg_n_10 : STD_LOGIC;
  signal bcdreg_n_11 : STD_LOGIC;
  signal bcdreg_n_12 : STD_LOGIC;
  signal bcdreg_n_13 : STD_LOGIC;
  signal bcdreg_n_14 : STD_LOGIC;
  signal bcdreg_n_15 : STD_LOGIC;
  signal bcdreg_n_2 : STD_LOGIC;
  signal bcdreg_n_3 : STD_LOGIC;
  signal bcdreg_n_4 : STD_LOGIC;
  signal bcdreg_n_5 : STD_LOGIC;
  signal bcdreg_n_6 : STD_LOGIC;
  signal bcdreg_n_7 : STD_LOGIC;
  signal bcdreg_n_8 : STD_LOGIC;
  signal bcdreg_n_9 : STD_LOGIC;
  signal cntrl_n_2 : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal seg_n_6 : STD_LOGIC;
  signal segload : STD_LOGIC;
  signal segout : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal segreg_n_16 : STD_LOGIC;
  signal segreg_n_17 : STD_LOGIC;
  signal segreg_n_4 : STD_LOGIC;
  signal segreg_n_5 : STD_LOGIC;
  signal segreg_n_6 : STD_LOGIC;
begin
bcd: entity work.BCDConvert
     port map (
      Q(11 downto 4) => p_0_in(7 downto 0),
      Q(3) => bcd_n_8,
      Q(2) => bcd_n_9,
      Q(1) => bcd_n_10,
      Q(0) => bcd_n_11,
      bcdload => bcdload,
      busy_reg_0 => bcd_n_12,
      clk125_BUFG => clk125_BUFG,
      current_state_reg => cntrl_n_2,
      next_state => next_state,
      \out\(0) => \out\(0),
      \q_reg[15]\(15) => bcdreg_n_0,
      \q_reg[15]\(14) => bcdreg_n_1,
      \q_reg[15]\(13) => bcdreg_n_2,
      \q_reg[15]\(12) => bcdreg_n_3,
      \q_reg[15]\(11) => bcdreg_n_4,
      \q_reg[15]\(10) => bcdreg_n_5,
      \q_reg[15]\(9) => bcdreg_n_6,
      \q_reg[15]\(8) => bcdreg_n_7,
      \q_reg[15]\(7) => bcdreg_n_8,
      \q_reg[15]\(6) => bcdreg_n_9,
      \q_reg[15]\(5) => bcdreg_n_10,
      \q_reg[15]\(4) => bcdreg_n_11,
      \q_reg[15]\(3) => bcdreg_n_12,
      \q_reg[15]\(2) => bcdreg_n_13,
      \q_reg[15]\(1) => bcdreg_n_14,
      \q_reg[15]\(0) => bcdreg_n_15
    );
bcdreg: entity work.subreg_3
     port map (
      Q(15) => bcdreg_n_0,
      Q(14) => bcdreg_n_1,
      Q(13) => bcdreg_n_2,
      Q(12) => bcdreg_n_3,
      Q(11) => bcdreg_n_4,
      Q(10) => bcdreg_n_5,
      Q(9) => bcdreg_n_6,
      Q(8) => bcdreg_n_7,
      Q(7) => bcdreg_n_8,
      Q(6) => bcdreg_n_9,
      Q(5) => bcdreg_n_10,
      Q(4) => bcdreg_n_11,
      Q(3) => bcdreg_n_12,
      Q(2) => bcdreg_n_13,
      Q(1) => bcdreg_n_14,
      Q(0) => bcdreg_n_15,
      bcdload => bcdload,
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      \q_reg[15]_0\(15 downto 0) => Q(15 downto 0)
    );
cntrl: entity work.dispCntrl
     port map (
      E(0) => segload,
      \bcd_data_reg[23]\ => cntrl_n_2,
      bcdload => bcdload,
      btn_IBUF(0) => btn_IBUF(0),
      busy_reg => bcd_n_12,
      clk125_BUFG => clk125_BUFG,
      next_state => next_state
    );
seg: entity work.x7segb8
     port map (
      CONV_INTEGER(2 downto 0) => CONV_INTEGER(2 downto 0),
      Q(8 downto 7) => segout(15 downto 14),
      Q(6 downto 4) => segout(12 downto 10),
      Q(3 downto 1) => segout(8 downto 6),
      Q(0) => segout(4),
      \a_to_g[6]\ => seg_n_6,
      a_to_g_OBUF(2 downto 0) => a_to_g_OBUF(2 downto 0),
      an_OBUF(2 downto 0) => an_OBUF(2 downto 0),
      btn_IBUF(0) => btn_IBUF(0),
      mclk_IBUF_BUFG => mclk_IBUF_BUFG,
      \q_reg[10]\ => segreg_n_6,
      \q_reg[10]_0\ => segreg_n_17,
      \q_reg[12]\ => segreg_n_16,
      \q_reg[8]\ => segreg_n_4,
      \q_reg[9]\ => segreg_n_5
    );
segreg: entity work.subreg_4
     port map (
      CONV_INTEGER(2 downto 0) => CONV_INTEGER(2 downto 0),
      D(11 downto 4) => p_0_in(7 downto 0),
      D(3) => bcd_n_8,
      D(2) => bcd_n_9,
      D(1) => bcd_n_10,
      D(0) => bcd_n_11,
      E(0) => segload,
      Q(8 downto 7) => segout(15 downto 14),
      Q(6 downto 4) => segout(12 downto 10),
      Q(3 downto 1) => segout(8 downto 6),
      Q(0) => segout(4),
      \a_to_g[0]\ => segreg_n_4,
      \a_to_g[1]\ => segreg_n_6,
      \a_to_g[2]\ => segreg_n_5,
      a_to_g_OBUF(3 downto 0) => a_to_g_OBUF(6 downto 3),
      \an[1]\ => segreg_n_17,
      \an[2]\ => segreg_n_16,
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      \clkdiv_reg[19]\ => seg_n_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity servotop is
  port (
    jd3_OBUF : out STD_LOGIC;
    \count_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ld_OBUF : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end servotop;

architecture STRUCTURE of servotop is
begin
servocnt: entity work.servoCount
     port map (
      CO(0) => CO(0),
      DI(0) => DI(0),
      S(0) => \count_reg[15]\(0),
      btn_IBUF(0) => btn_IBUF(0),
      clk => clk,
      \count_reg[15]_0\(0) => \count_reg[15]\(3),
      \count_reg[7]_0\(1 downto 0) => \count_reg[15]\(2 downto 1),
      jd3_OBUF => jd3_OBUF,
      ld_OBUF(1 downto 0) => ld_OBUF(1 downto 0),
      \q_reg[3]\ => \q_reg[3]\,
      \q_reg[3]_0\(0) => \q_reg[3]_0\(0),
      \q_reg[3]_1\(0) => \q_reg[3]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity usTop is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ld_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    jb1_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \count_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    output_reg : out STD_LOGIC;
    clk125_BUFG : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[13]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    jb2_IBUF : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end usTop;

architecture STRUCTURE of usTop is
  signal compload : STD_LOGIC;
  signal compr_n_0 : STD_LOGIC;
  signal compr_n_1 : STD_LOGIC;
  signal compr_n_18 : STD_LOGIC;
  signal compr_n_19 : STD_LOGIC;
  signal compr_n_20 : STD_LOGIC;
  signal compr_n_21 : STD_LOGIC;
  signal compr_n_22 : STD_LOGIC;
  signal compr_n_23 : STD_LOGIC;
  signal compr_n_24 : STD_LOGIC;
  signal compr_n_25 : STD_LOGIC;
  signal compr_n_26 : STD_LOGIC;
  signal compr_n_27 : STD_LOGIC;
  signal compr_n_28 : STD_LOGIC;
  signal compr_n_29 : STD_LOGIC;
  signal compr_n_30 : STD_LOGIC;
  signal compr_n_31 : STD_LOGIC;
  signal compr_n_32 : STD_LOGIC;
  signal compr_n_33 : STD_LOGIC;
  signal compr_n_34 : STD_LOGIC;
  signal compr_n_35 : STD_LOGIC;
  signal compr_n_36 : STD_LOGIC;
  signal compr_n_37 : STD_LOGIC;
  signal compr_n_38 : STD_LOGIC;
  signal compr_n_39 : STD_LOGIC;
  signal compr_n_40 : STD_LOGIC;
  signal compr_n_41 : STD_LOGIC;
  signal compr_n_42 : STD_LOGIC;
  signal compr_n_43 : STD_LOGIC;
  signal compr_n_44 : STD_LOGIC;
  signal compr_n_45 : STD_LOGIC;
  signal compr_n_46 : STD_LOGIC;
  signal compr_n_47 : STD_LOGIC;
  signal compr_n_48 : STD_LOGIC;
  signal compr_n_49 : STD_LOGIC;
  signal compr_n_50 : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 19 downto 7 );
  signal dist : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal endReg_n_0 : STD_LOGIC;
  signal endReg_n_1 : STD_LOGIC;
  signal endReg_n_10 : STD_LOGIC;
  signal endReg_n_11 : STD_LOGIC;
  signal endReg_n_12 : STD_LOGIC;
  signal endReg_n_13 : STD_LOGIC;
  signal endReg_n_14 : STD_LOGIC;
  signal endReg_n_15 : STD_LOGIC;
  signal endReg_n_16 : STD_LOGIC;
  signal endReg_n_17 : STD_LOGIC;
  signal endReg_n_18 : STD_LOGIC;
  signal endReg_n_19 : STD_LOGIC;
  signal endReg_n_2 : STD_LOGIC;
  signal endReg_n_20 : STD_LOGIC;
  signal endReg_n_21 : STD_LOGIC;
  signal endReg_n_22 : STD_LOGIC;
  signal endReg_n_23 : STD_LOGIC;
  signal endReg_n_24 : STD_LOGIC;
  signal endReg_n_25 : STD_LOGIC;
  signal endReg_n_26 : STD_LOGIC;
  signal endReg_n_27 : STD_LOGIC;
  signal endReg_n_28 : STD_LOGIC;
  signal endReg_n_29 : STD_LOGIC;
  signal endReg_n_3 : STD_LOGIC;
  signal endReg_n_30 : STD_LOGIC;
  signal endReg_n_31 : STD_LOGIC;
  signal endReg_n_32 : STD_LOGIC;
  signal endReg_n_33 : STD_LOGIC;
  signal endReg_n_4 : STD_LOGIC;
  signal endReg_n_5 : STD_LOGIC;
  signal endReg_n_6 : STD_LOGIC;
  signal endReg_n_7 : STD_LOGIC;
  signal endReg_n_8 : STD_LOGIC;
  signal endReg_n_9 : STD_LOGIC;
  signal endload : STD_LOGIC;
  signal \^jb1_obuf\ : STD_LOGIC;
  signal ltFar : STD_LOGIC;
  signal ltOp4_in : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal servsel : STD_LOGIC_VECTOR ( 1 to 1 );
  signal strtReg_n_0 : STD_LOGIC;
  signal strtReg_n_1 : STD_LOGIC;
  signal strtReg_n_10 : STD_LOGIC;
  signal strtReg_n_11 : STD_LOGIC;
  signal strtReg_n_12 : STD_LOGIC;
  signal strtReg_n_2 : STD_LOGIC;
  signal strtReg_n_3 : STD_LOGIC;
  signal strtReg_n_4 : STD_LOGIC;
  signal strtReg_n_5 : STD_LOGIC;
  signal strtReg_n_6 : STD_LOGIC;
  signal strtReg_n_7 : STD_LOGIC;
  signal strtReg_n_8 : STD_LOGIC;
  signal strtReg_n_9 : STD_LOGIC;
  signal strtload : STD_LOGIC;
  signal trig_n_14 : STD_LOGIC;
begin
  jb1_OBUF <= \^jb1_obuf\;
  \out\(0) <= \^out\(0);
cntrl: entity work.us_control
     port map (
      AR(0) => trig_n_14,
      clk125_BUFG => clk125_BUFG,
      jb2_IBUF => jb2_IBUF,
      \out\(3) => \^out\(0),
      \out\(2) => compload,
      \out\(1) => endload,
      \out\(0) => strtload,
      output_reg => \^jb1_obuf\
    );
comp: entity work.comp4to1
     port map (
      CO(0) => ltOp4_in,
      DI(2) => compr_n_22,
      DI(1) => compr_n_23,
      DI(0) => compr_n_24,
      S(3) => compr_n_25,
      S(2) => compr_n_26,
      S(1) => compr_n_27,
      S(0) => compr_n_28,
      ltFar => ltFar,
      \q_reg[10]\(0) => compr_n_50,
      \q_reg[12]\(1) => compr_n_39,
      \q_reg[12]\(0) => compr_n_40,
      \q_reg[12]_0\(1) => compr_n_37,
      \q_reg[12]_0\(0) => compr_n_38,
      \q_reg[14]\(2) => compr_n_47,
      \q_reg[14]\(1) => compr_n_48,
      \q_reg[14]\(0) => compr_n_49,
      \q_reg[14]_0\(2) => compr_n_44,
      \q_reg[14]_0\(1) => compr_n_45,
      \q_reg[14]_0\(0) => compr_n_46,
      \q_reg[14]_1\(2) => compr_n_41,
      \q_reg[14]_1\(1) => compr_n_42,
      \q_reg[14]_1\(0) => compr_n_43,
      \q_reg[8]\(3) => compr_n_18,
      \q_reg[8]\(2) => compr_n_19,
      \q_reg[8]\(1) => compr_n_20,
      \q_reg[8]\(0) => compr_n_21,
      \q_reg[9]\(1) => compr_n_0,
      \q_reg[9]\(0) => compr_n_1,
      \q_reg[9]_0\(3) => compr_n_29,
      \q_reg[9]_0\(2) => compr_n_30,
      \q_reg[9]_0\(1) => compr_n_31,
      \q_reg[9]_0\(0) => compr_n_32,
      \q_reg[9]_1\(3) => compr_n_33,
      \q_reg[9]_1\(2) => compr_n_34,
      \q_reg[9]_1\(1) => compr_n_35,
      \q_reg[9]_1\(0) => compr_n_36,
      servsel(0) => servsel(1)
    );
compr: entity work.subreg
     port map (
      DI(2) => compr_n_22,
      DI(1) => compr_n_23,
      DI(0) => compr_n_24,
      E(0) => compload,
      Q(15 downto 0) => Q(15 downto 0),
      S(3) => compr_n_25,
      S(2) => compr_n_26,
      S(1) => compr_n_27,
      S(0) => compr_n_28,
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      multOp(15 downto 0) => dist(15 downto 0),
      \q_reg[1]_0\(3) => compr_n_29,
      \q_reg[1]_0\(2) => compr_n_30,
      \q_reg[1]_0\(1) => compr_n_31,
      \q_reg[1]_0\(0) => compr_n_32,
      \q_reg[1]_1\(3) => compr_n_33,
      \q_reg[1]_1\(2) => compr_n_34,
      \q_reg[1]_1\(1) => compr_n_35,
      \q_reg[1]_1\(0) => compr_n_36,
      \q_reg[1]_2\(1) => compr_n_37,
      \q_reg[1]_2\(0) => compr_n_38,
      \q_reg[1]_3\(2) => compr_n_41,
      \q_reg[1]_3\(1) => compr_n_42,
      \q_reg[1]_3\(0) => compr_n_43,
      \q_reg[2]_0\(1) => compr_n_0,
      \q_reg[2]_0\(0) => compr_n_1,
      \q_reg[2]_1\(3) => compr_n_18,
      \q_reg[2]_1\(2) => compr_n_19,
      \q_reg[2]_1\(1) => compr_n_20,
      \q_reg[2]_1\(0) => compr_n_21,
      \q_reg[2]_2\(1) => compr_n_39,
      \q_reg[2]_2\(0) => compr_n_40,
      \q_reg[2]_3\(2) => compr_n_44,
      \q_reg[2]_3\(1) => compr_n_45,
      \q_reg[2]_3\(0) => compr_n_46,
      \q_reg[3]_0\(2) => compr_n_47,
      \q_reg[3]_0\(1) => compr_n_48,
      \q_reg[3]_0\(0) => compr_n_49,
      \q_reg[3]_1\(0) => compr_n_50
    );
endReg: entity work.subreg_0
     port map (
      DI(2) => endReg_n_0,
      DI(1) => endReg_n_1,
      DI(0) => endReg_n_2,
      E(0) => endload,
      Q(12) => endReg_n_3,
      Q(11) => endReg_n_4,
      Q(10) => endReg_n_5,
      Q(9) => endReg_n_6,
      Q(8) => endReg_n_7,
      Q(7) => endReg_n_8,
      Q(6) => endReg_n_9,
      Q(5) => endReg_n_10,
      Q(4) => endReg_n_11,
      Q(3) => endReg_n_12,
      Q(2) => endReg_n_13,
      Q(1) => endReg_n_14,
      Q(0) => endReg_n_15,
      S(3) => endReg_n_16,
      S(2) => endReg_n_17,
      S(1) => endReg_n_18,
      S(0) => endReg_n_19,
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      count_reg(12 downto 0) => count_reg(19 downto 7),
      multOp(3) => endReg_n_20,
      multOp(2) => endReg_n_21,
      multOp(1) => endReg_n_22,
      multOp(0) => endReg_n_23,
      multOp_0(3) => endReg_n_24,
      multOp_0(2) => endReg_n_25,
      multOp_0(1) => endReg_n_26,
      multOp_0(0) => endReg_n_27,
      multOp_1(3) => endReg_n_28,
      multOp_1(2) => endReg_n_29,
      multOp_1(1) => endReg_n_30,
      multOp_1(0) => endReg_n_31,
      multOp_2(0) => endReg_n_32,
      multOp_3(0) => endReg_n_33,
      \q_reg[12]_0\(12) => strtReg_n_0,
      \q_reg[12]_0\(11) => strtReg_n_1,
      \q_reg[12]_0\(10) => strtReg_n_2,
      \q_reg[12]_0\(9) => strtReg_n_3,
      \q_reg[12]_0\(8) => strtReg_n_4,
      \q_reg[12]_0\(7) => strtReg_n_5,
      \q_reg[12]_0\(6) => strtReg_n_6,
      \q_reg[12]_0\(5) => strtReg_n_7,
      \q_reg[12]_0\(4) => strtReg_n_8,
      \q_reg[12]_0\(3) => strtReg_n_9,
      \q_reg[12]_0\(2) => strtReg_n_10,
      \q_reg[12]_0\(1) => strtReg_n_11,
      \q_reg[12]_0\(0) => strtReg_n_12
    );
ldreg: entity work.subreg_1
     port map (
      CO(0) => ltOp4_in,
      DI(0) => DI(0),
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      \count_reg[13]\(3 downto 0) => \count_reg[13]\(3 downto 0),
      \count_reg[14]\(0) => CO(0),
      \count_reg[15]\(0) => \count_reg[15]\(0),
      \count_reg[15]_0\(0) => \count_reg[15]_0\(0),
      ld_OBUF(2 downto 0) => ld_OBUF(2 downto 0),
      ltFar => ltFar,
      \out\(0) => \^out\(0),
      output_reg => output_reg,
      servsel(0) => servsel(1)
    );
math: entity work.sub
     port map (
      DI(2) => endReg_n_0,
      DI(1) => endReg_n_1,
      DI(0) => endReg_n_2,
      E(0) => compload,
      Q(12) => endReg_n_3,
      Q(11) => endReg_n_4,
      Q(10) => endReg_n_5,
      Q(9) => endReg_n_6,
      Q(8) => endReg_n_7,
      Q(7) => endReg_n_8,
      Q(6) => endReg_n_9,
      Q(5) => endReg_n_10,
      Q(4) => endReg_n_11,
      Q(3) => endReg_n_12,
      Q(2) => endReg_n_13,
      Q(1) => endReg_n_14,
      Q(0) => endReg_n_15,
      S(3) => endReg_n_16,
      S(2) => endReg_n_17,
      S(1) => endReg_n_18,
      S(0) => endReg_n_19,
      \q_reg[11]\(3) => endReg_n_28,
      \q_reg[11]\(2) => endReg_n_29,
      \q_reg[11]\(1) => endReg_n_30,
      \q_reg[11]\(0) => endReg_n_31,
      \q_reg[12]\(0) => endReg_n_33,
      \q_reg[12]_0\(0) => endReg_n_32,
      \q_reg[15]\(15 downto 0) => dist(15 downto 0),
      \q_reg[3]\(3) => endReg_n_20,
      \q_reg[3]\(2) => endReg_n_21,
      \q_reg[3]\(1) => endReg_n_22,
      \q_reg[3]\(0) => endReg_n_23,
      \q_reg[7]\(3) => endReg_n_24,
      \q_reg[7]\(2) => endReg_n_25,
      \q_reg[7]\(1) => endReg_n_26,
      \q_reg[7]\(0) => endReg_n_27
    );
strtReg: entity work.subreg_2
     port map (
      E(0) => strtload,
      Q(12) => strtReg_n_0,
      Q(11) => strtReg_n_1,
      Q(10) => strtReg_n_2,
      Q(9) => strtReg_n_3,
      Q(8) => strtReg_n_4,
      Q(7) => strtReg_n_5,
      Q(6) => strtReg_n_6,
      Q(5) => strtReg_n_7,
      Q(4) => strtReg_n_8,
      Q(3) => strtReg_n_9,
      Q(2) => strtReg_n_10,
      Q(1) => strtReg_n_11,
      Q(0) => strtReg_n_12,
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      count_reg(12 downto 0) => count_reg(19 downto 7)
    );
trig: entity work.trigger
     port map (
      AR(0) => trig_n_14,
      \FSM_onehot_current_state_reg[0]\ => \^jb1_obuf\,
      btn_IBUF(0) => btn_IBUF(0),
      clk125_BUFG => clk125_BUFG,
      count_reg(12 downto 0) => count_reg(19 downto 7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity projectTop is
  port (
    jb1 : out STD_LOGIC;
    jb2 : in STD_LOGIC;
    jd3 : out STD_LOGIC;
    mclk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ld : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of projectTop : entity is true;
end projectTop;

architecture STRUCTURE of projectTop is
  signal a_to_g_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal an_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal btn_IBUF : STD_LOGIC_VECTOR ( 1 to 1 );
  signal clk : STD_LOGIC;
  signal clk125 : STD_LOGIC;
  signal clk125_BUFG : STD_LOGIC;
  signal jb1_OBUF : STD_LOGIC;
  signal jb2_IBUF : STD_LOGIC;
  signal jd3_OBUF : STD_LOGIC;
  signal ld_OBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal mclk_IBUF : STD_LOGIC;
  signal mclk_IBUF_BUFG : STD_LOGIC;
  signal servload : STD_LOGIC;
  signal \servocnt/count_reg\ : STD_LOGIC_VECTOR ( 13 downto 3 );
  signal \servocnt/leqOp\ : STD_LOGIC;
  signal ust_n_10 : STD_LOGIC;
  signal ust_n_11 : STD_LOGIC;
  signal ust_n_12 : STD_LOGIC;
  signal ust_n_13 : STD_LOGIC;
  signal ust_n_14 : STD_LOGIC;
  signal ust_n_15 : STD_LOGIC;
  signal ust_n_16 : STD_LOGIC;
  signal ust_n_17 : STD_LOGIC;
  signal ust_n_18 : STD_LOGIC;
  signal ust_n_19 : STD_LOGIC;
  signal ust_n_20 : STD_LOGIC;
  signal ust_n_21 : STD_LOGIC;
  signal ust_n_22 : STD_LOGIC;
  signal ust_n_23 : STD_LOGIC;
  signal ust_n_24 : STD_LOGIC;
  signal ust_n_5 : STD_LOGIC;
  signal ust_n_6 : STD_LOGIC;
  signal ust_n_7 : STD_LOGIC;
  signal ust_n_8 : STD_LOGIC;
  signal ust_n_9 : STD_LOGIC;
begin
\a_to_g_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(0),
      O => a_to_g(0)
    );
\a_to_g_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(1),
      O => a_to_g(1)
    );
\a_to_g_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(2),
      O => a_to_g(2)
    );
\a_to_g_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(3),
      O => a_to_g(3)
    );
\a_to_g_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(4),
      O => a_to_g(4)
    );
\a_to_g_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(5),
      O => a_to_g(5)
    );
\a_to_g_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a_to_g_OBUF(6),
      O => a_to_g(6)
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(3)
    );
\an_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(4)
    );
\an_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(5)
    );
\an_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(6)
    );
\an_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(7)
    );
\btn_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(1),
      O => btn_IBUF(1)
    );
clk125_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk125,
      O => clk125_BUFG
    );
disp: entity work.displayTop
     port map (
      Q(15) => ust_n_5,
      Q(14) => ust_n_6,
      Q(13) => ust_n_7,
      Q(12) => ust_n_8,
      Q(11) => ust_n_9,
      Q(10) => ust_n_10,
      Q(9) => ust_n_11,
      Q(8) => ust_n_12,
      Q(7) => ust_n_13,
      Q(6) => ust_n_14,
      Q(5) => ust_n_15,
      Q(4) => ust_n_16,
      Q(3) => ust_n_17,
      Q(2) => ust_n_18,
      Q(1) => ust_n_19,
      Q(0) => ust_n_20,
      a_to_g_OBUF(6 downto 0) => a_to_g_OBUF(6 downto 0),
      an_OBUF(2 downto 0) => an_OBUF(2 downto 0),
      btn_IBUF(0) => btn_IBUF(1),
      clk125_BUFG => clk125_BUFG,
      mclk_IBUF_BUFG => mclk_IBUF_BUFG,
      \out\(0) => servload
    );
div: entity work.clkDiv
     port map (
      btn_IBUF(0) => btn_IBUF(1),
      clk => clk,
      clk125 => clk125,
      clk125_BUFG => clk125_BUFG,
      mclk_IBUF_BUFG => mclk_IBUF_BUFG
    );
jb1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => jb1_OBUF,
      O => jb1
    );
jb2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => jb2,
      O => jb2_IBUF
    );
jd3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => jd3_OBUF,
      O => jd3
    );
\ld_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ld(0)
    );
\ld_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ld_OBUF(1),
      O => ld(1)
    );
\ld_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ld_OBUF(2),
      O => ld(2)
    );
\ld_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ld_OBUF(3),
      O => ld(3)
    );
\ld_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ld(4)
    );
\ld_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ld(5)
    );
\ld_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ld(6)
    );
\ld_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ld(7)
    );
mclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => mclk_IBUF,
      O => mclk_IBUF_BUFG
    );
mclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => mclk,
      O => mclk_IBUF
    );
servo: entity work.servotop
     port map (
      CO(0) => \servocnt/leqOp\,
      DI(0) => ust_n_23,
      btn_IBUF(0) => btn_IBUF(1),
      clk => clk,
      \count_reg[15]\(3) => \servocnt/count_reg\(13),
      \count_reg[15]\(2 downto 1) => \servocnt/count_reg\(7 downto 6),
      \count_reg[15]\(0) => \servocnt/count_reg\(3),
      jd3_OBUF => jd3_OBUF,
      ld_OBUF(1 downto 0) => ld_OBUF(3 downto 2),
      \q_reg[3]\ => ust_n_24,
      \q_reg[3]_0\(0) => ust_n_22,
      \q_reg[3]_1\(0) => ust_n_21
    );
ust: entity work.usTop
     port map (
      CO(0) => \servocnt/leqOp\,
      DI(0) => ust_n_23,
      Q(15) => ust_n_5,
      Q(14) => ust_n_6,
      Q(13) => ust_n_7,
      Q(12) => ust_n_8,
      Q(11) => ust_n_9,
      Q(10) => ust_n_10,
      Q(9) => ust_n_11,
      Q(8) => ust_n_12,
      Q(7) => ust_n_13,
      Q(6) => ust_n_14,
      Q(5) => ust_n_15,
      Q(4) => ust_n_16,
      Q(3) => ust_n_17,
      Q(2) => ust_n_18,
      Q(1) => ust_n_19,
      Q(0) => ust_n_20,
      btn_IBUF(0) => btn_IBUF(1),
      clk125_BUFG => clk125_BUFG,
      \count_reg[13]\(3) => \servocnt/count_reg\(13),
      \count_reg[13]\(2 downto 1) => \servocnt/count_reg\(7 downto 6),
      \count_reg[13]\(0) => \servocnt/count_reg\(3),
      \count_reg[15]\(0) => ust_n_21,
      \count_reg[15]_0\(0) => ust_n_22,
      jb1_OBUF => jb1_OBUF,
      jb2_IBUF => jb2_IBUF,
      ld_OBUF(2 downto 0) => ld_OBUF(3 downto 1),
      \out\(0) => servload,
      output_reg => ust_n_24
    );
end STRUCTURE;
