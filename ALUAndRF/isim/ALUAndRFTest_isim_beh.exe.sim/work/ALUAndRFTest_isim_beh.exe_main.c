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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001877637534_3674772129_init();
    work_m_00000000001164925723_4231019343_init();
    work_m_00000000003918289430_4194189864_init();
    work_m_00000000000455666196_2721346253_init();
    work_m_00000000002593955025_0263984841_init();
    work_m_00000000001941582998_2435757882_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001941582998_2435757882");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}