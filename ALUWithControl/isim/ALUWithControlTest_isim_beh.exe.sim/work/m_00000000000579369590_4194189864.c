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
static const char *ng0 = "C:/Users/Russell/git/Architecture/ALUWithControl/ALUWithControl.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {7U, 0U};
static int ng6[] = {1, 0};
static int ng7[] = {0, 0};



static void Always_29_0(char *t0)
{
    char t9[8];
    char t22[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng7)));
    memset(t9, 0, 8);
    t8 = (t4 + 4);
    t15 = (t7 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t15);
    t17 = (t13 ^ t14);
    t18 = (t12 | t17);
    t19 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t15);
    t24 = (t19 | t23);
    t25 = (~(t24));
    t26 = (t18 & t25);
    if (t26 != 0)
        goto LAB56;

LAB53:    if (t24 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t9) = 1;

LAB56:    t20 = (t9 + 4);
    t27 = *((unsigned int *)t20);
    t30 = (~(t27));
    t31 = *((unsigned int *)t9);
    t32 = (t31 & t30);
    t36 = (t32 != 0);
    if (t36 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB59:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    t7 = (t8 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 & 4294967295U);
    if (t14 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t7) != 0)
        goto LAB20;

LAB21:    t16 = (t9 + 4);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB22;

LAB23:    memcpy(t29, t9, 8);

LAB24:    t61 = (t0 + 1768);
    xsi_vlogvar_assign_value(t61, t29, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 | t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t15 = (t9 + 4);
    t13 = *((unsigned int *)t3);
    t14 = *((unsigned int *)t8);
    t17 = (t13 | t14);
    *((unsigned int *)t15) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB32;

LAB33:
LAB34:    t21 = (t0 + 1768);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 32);
    goto LAB17;

LAB11:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB17;

LAB13:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB17;

LAB15:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t29, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB36;

LAB35:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB36;

LAB39:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB37;

LAB38:    memset(t22, 0, 8);
    t16 = (t29 + 4);
    t10 = *((unsigned int *)t16);
    t11 = (~(t10));
    t12 = *((unsigned int *)t29);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t16) != 0)
        goto LAB42;

LAB43:    t21 = (t22 + 4);
    t17 = *((unsigned int *)t22);
    t18 = *((unsigned int *)t21);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB44;

LAB45:    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t21) > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t22) > 0)
        goto LAB50;

LAB51:    memcpy(t9, t33, 8);

LAB52:    t34 = (t0 + 1768);
    xsi_vlogvar_assign_value(t34, t9, 0, 0, 32);
    goto LAB17;

LAB18:    *((unsigned int *)t9) = 1;
    goto LAB21;

LAB20:    t15 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB21;

LAB22:    t20 = (t0 + 1208U);
    t21 = *((char **)t20);
    memset(t22, 0, 8);
    t20 = (t21 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t25 & t24);
    t27 = (t26 & 4294967295U);
    if (t27 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t20) != 0)
        goto LAB27;

LAB28:    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t22);
    t32 = (t30 & t31);
    *((unsigned int *)t29) = t32;
    t33 = (t9 + 4);
    t34 = (t22 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB24;

LAB25:    *((unsigned int *)t22) = 1;
    goto LAB28;

LAB27:    t28 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB28;

LAB29:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    t43 = (t9 + 4);
    t44 = (t22 + 4);
    t45 = *((unsigned int *)t9);
    t46 = (~(t45));
    t47 = *((unsigned int *)t43);
    t48 = (~(t47));
    t49 = *((unsigned int *)t22);
    t50 = (~(t49));
    t51 = *((unsigned int *)t44);
    t52 = (~(t51));
    t53 = (t46 & t48);
    t54 = (t50 & t52);
    t55 = (~(t53));
    t56 = (~(t54));
    t57 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t57 & t55);
    t58 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t58 & t56);
    t59 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t59 & t55);
    t60 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t60 & t56);
    goto LAB31;

LAB32:    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t23 | t24);
    t16 = (t4 + 4);
    t20 = (t7 + 4);
    t25 = *((unsigned int *)t16);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t53 = (t27 & t26);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    t32 = *((unsigned int *)t7);
    t54 = (t32 & t31);
    t36 = (~(t53));
    t37 = (~(t54));
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t39 & t37);
    goto LAB34;

LAB36:    t15 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB38;

LAB37:    *((unsigned int *)t29) = 1;
    goto LAB38;

LAB40:    *((unsigned int *)t22) = 1;
    goto LAB43;

LAB42:    t20 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB43;

LAB44:    t28 = ((char*)((ng6)));
    goto LAB45;

LAB46:    t33 = ((char*)((ng7)));
    goto LAB47;

LAB48:    xsi_vlog_unsigned_bit_combine(t9, 32, t28, 32, t33, 32);
    goto LAB52;

LAB50:    memcpy(t9, t28, 8);
    goto LAB52;

LAB55:    t16 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB56;

LAB57:    xsi_set_current_line(38, ng0);
    t21 = ((char*)((ng6)));
    t28 = (t0 + 1928);
    xsi_vlogvar_assign_value(t28, t21, 0, 0, 2);
    goto LAB59;

}


extern void work_m_00000000000579369590_4194189864_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000000579369590_4194189864", "isim/ALUWithControlTest_isim_beh.exe.sim/work/m_00000000000579369590_4194189864.didat");
	xsi_register_executes(pe);
}
