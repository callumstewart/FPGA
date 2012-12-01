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
    work_m_00000000000821443455_4247746725_init();
    work_m_00000000001450019461_4149323352_init();
    work_m_00000000001252105951_0245664088_init();
    work_m_00000000000466295550_1248946161_init();
    work_m_00000000000203012858_1557003008_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000203012858_1557003008");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
