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
    work_m_00000000004140614392_2645899462_init();
    work_m_00000000000292419454_0159363533_init();
    work_m_00000000000983966652_2891784795_init();
    work_m_00000000000959057026_0821202184_init();
    work_m_00000000003684666824_0203291174_init();
    work_m_00000000002076138448_0606894571_init();
    work_m_00000000003323131230_1901586133_init();
    work_m_00000000001520660140_0831799123_init();
    work_m_00000000002887347388_3736641858_init();
    work_m_00000000001121667129_2412239423_init();
    work_m_00000000003274667588_3206981466_init();
    work_m_00000000003479038102_0324841756_init();
    work_m_00000000001881173544_1720550770_init();
    work_m_00000000001264209515_2848792534_init();
    work_m_00000000003124540924_1060572487_init();
    work_m_00000000002181851985_2456733156_init();
    work_m_00000000004233721428_0461278573_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004233721428_0461278573");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
