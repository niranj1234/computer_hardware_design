/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_72(char*, char *);
extern void execute_94(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_78(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_114(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void execute_136(char*, char *);
extern void execute_140(char*, char *);
extern void execute_132(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_143(char*, char *);
extern void execute_145(char*, char *);
extern void execute_147(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[84] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_151, (funcp)execute_152, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_72, (funcp)execute_94, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_78, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_114, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_110, (funcp)execute_111, (funcp)execute_155, (funcp)execute_156, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_129, (funcp)execute_136, (funcp)execute_140, (funcp)execute_132, (funcp)execute_134, (funcp)execute_135, (funcp)execute_138, (funcp)execute_139, (funcp)execute_143, (funcp)execute_145, (funcp)execute_147, (funcp)execute_149, (funcp)execute_150, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111};
const int NumRelocateId= 84;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/us_tb_behav/xsim.reloc",  (void **)funcTab, 84);
	iki_vhdl_file_variable_register(dp + 31864);
	iki_vhdl_file_variable_register(dp + 31920);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/us_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/us_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 38288, dp + 53096, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 51128, dp + 53152, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 50936, dp + 53208, 0, 15, 0, 15, 16, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/us_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/us_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/us_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
