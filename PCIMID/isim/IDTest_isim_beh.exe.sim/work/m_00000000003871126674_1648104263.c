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
static const char *ng0 = "C:/Users/Russell/git/Architecture/PCIMID/ID.v";
static unsigned int ng1[] = {35U, 0U};
static unsigned int ng2[] = {240U, 0U};
static unsigned int ng3[] = {43U, 0U};
static unsigned int ng4[] = {136U, 0U};
static unsigned int ng5[] = {32U, 0U};
static unsigned int ng6[] = {290U, 0U};
static unsigned int ng7[] = {34U, 0U};
static unsigned int ng8[] = {36U, 0U};
static unsigned int ng9[] = {37U, 0U};
static unsigned int ng10[] = {42U, 0U};



static void Always_34_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 26);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 26);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 63U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 63U);

LAB6:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t14, 6);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(37, ng0);
    t16 = ((char*)((ng2)));
    t17 = (t0 + 2408);
    xsi_vlogvar_assign_value(t17, t16, 0, 0, 9);
    goto LAB11;

LAB9:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 9);
    goto LAB11;

}

static void Always_42_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3912);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 255U);

LAB6:    t14 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 8, t14, 8);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 8, t2, 8);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 8, t2, 8);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 8, t2, 8);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 8, t2, 8);
    if (t15 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(45, ng0);
    t16 = ((char*)((ng6)));
    t17 = (t0 + 2408);
    xsi_vlogvar_assign_value(t17, t16, 0, 0, 9);
    goto LAB17;

LAB9:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 9);
    goto LAB17;

LAB11:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 9);
    goto LAB17;

LAB13:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 9);
    goto LAB17;

LAB15:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 9);
    goto LAB17;

}


extern void work_m_00000000003871126674_1648104263_init()
{
	static char *pe[] = {(void *)Always_34_0,(void *)Always_42_1};
	xsi_register_didat("work_m_00000000003871126674_1648104263", "isim/IDTest_isim_beh.exe.sim/work/m_00000000003871126674_1648104263.didat");
	xsi_register_executes(pe);
}
