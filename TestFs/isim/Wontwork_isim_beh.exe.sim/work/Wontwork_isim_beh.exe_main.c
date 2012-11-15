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
    work_m_00000000003575189369_2412239423_init();
    work_m_00000000002654754806_0324841756_init();
    work_m_00000000002330818372_3206981466_init();
    work_m_00000000002962466568_1720550770_init();
    work_m_00000000004077490091_2848792534_init();
    work_m_00000000003236213850_1060572487_init();
    work_m_00000000000426425113_3177071327_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000426425113_3177071327");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}