/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Russell/git/Architecture/ALUControl/ALUControl.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {6U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {10U, 0U};
static unsigned int ng8[] = {7U, 0U};



static void Always_27_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogtype_concat(t4, 4, 4, 1U, t6, 4);

LAB6:    t5 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t7 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t7 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t7 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t7 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t7 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(31, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);
    goto LAB17;

LAB9:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB17;

LAB11:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB17;

LAB13:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB17;

LAB15:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 4);
    goto LAB17;

}


extern void work_m_00000000000827362107_4231019343_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000000827362107_4231019343", "isim/ALUctlTest_isim_beh.exe.sim/work/m_00000000000827362107_4231019343.didat");
	xsi_register_executes(pe);
}
