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
    work_m_00000000003262037018_1783167462_init();
    work_m_00000000002079161855_2412880366_init();
    work_m_00000000003482042927_2513977704_init();
    work_m_00000000003482042927_1723521182_init();
    work_m_00000000003482042927_1638540529_init();
    work_m_00000000001164925723_4231019343_init();
    work_m_00000000003918289430_4194189864_init();
    work_m_00000000001877637534_3674772129_init();
    work_m_00000000003483581111_4178857063_init();
    work_m_00000000003307119838_3872083390_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003307119838_3872083390");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
