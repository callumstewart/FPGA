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
    work_m_00000000003684666824_0203291174_init();
    work_m_00000000002076138448_0606894571_init();
    work_m_00000000003323131230_1901586133_init();
    work_m_00000000003684666824_1453427274_init();
    work_m_00000000000338918806_3559641128_init();
    work_m_00000000003684666824_0819087816_init();
    work_m_00000000002149510078_2274852545_init();
    work_m_00000000001544931027_1264668575_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001544931027_1264668575");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
