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

/* This file is designed for use with ISim build 0x1048c146 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/Nor.v";



static void Cont_29_0(char *t0)
{
    char t3[8];
    char t5[8];
    char t19[8];
    char t26[8];
    char t54[8];
    char t69[8];
    char t76[8];
    char t104[8];
    char t119[8];
    char t126[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;
    char *t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    char *t162;
    char *t163;
    char *t164;
    char *t165;
    unsigned int t166;
    unsigned int t167;
    char *t168;
    unsigned int t169;
    unsigned int t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t14 = (!(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB8;

LAB9:    memcpy(t26, t5, 8);

LAB10:    memset(t54, 0, 8);
    t55 = (t26 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t26);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t55) != 0)
        goto LAB20;

LAB21:    t62 = (t54 + 4);
    t63 = *((unsigned int *)t54);
    t64 = (!(t63));
    t65 = *((unsigned int *)t62);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB22;

LAB23:    memcpy(t76, t54, 8);

LAB24:    memset(t104, 0, 8);
    t105 = (t76 + 4);
    t106 = *((unsigned int *)t105);
    t107 = (~(t106));
    t108 = *((unsigned int *)t76);
    t109 = (t108 & t107);
    t110 = (t109 & 1U);
    if (t110 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t105) != 0)
        goto LAB34;

LAB35:    t112 = (t104 + 4);
    t113 = *((unsigned int *)t104);
    t114 = (!(t113));
    t115 = *((unsigned int *)t112);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB36;

LAB37:    memcpy(t126, t104, 8);

LAB38:    memset(t3, 0, 8);
    t154 = (t126 + 4);
    t155 = *((unsigned int *)t154);
    t156 = (~(t155));
    t157 = *((unsigned int *)t126);
    t158 = (t157 & t156);
    t159 = (t158 & 1U);
    if (t159 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t154) == 0)
        goto LAB46;

LAB48:    t160 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t160) = 1;

LAB49:    t161 = (t0 + 1868);
    t162 = (t161 + 32U);
    t163 = *((char **)t162);
    t164 = (t163 + 40U);
    t165 = *((char **)t164);
    memset(t165, 0, 8);
    t166 = 1U;
    t167 = t166;
    t168 = (t3 + 4);
    t169 = *((unsigned int *)t3);
    t166 = (t166 & t169);
    t170 = *((unsigned int *)t168);
    t167 = (t167 & t170);
    t171 = (t165 + 4);
    t172 = *((unsigned int *)t165);
    *((unsigned int *)t165) = (t172 | t166);
    t173 = *((unsigned int *)t171);
    *((unsigned int *)t171) = (t173 | t167);
    xsi_driver_vfirst_trans(t161, 0, 0);
    t174 = (t0 + 1824);
    *((int *)t174) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB6:    t11 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t17 = (t0 + 692U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t17 = (t18 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t17) != 0)
        goto LAB13;

LAB14:    t27 = *((unsigned int *)t5);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    *((unsigned int *)t26) = t29;
    t30 = (t5 + 4);
    t31 = (t19 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t19) = 1;
    goto LAB14;

LAB13:    t25 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB14;

LAB15:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t5 + 4);
    t41 = (t19 + 4);
    t42 = *((unsigned int *)t40);
    t43 = (~(t42));
    t44 = *((unsigned int *)t5);
    t45 = (t44 & t43);
    t46 = *((unsigned int *)t41);
    t47 = (~(t46));
    t48 = *((unsigned int *)t19);
    t49 = (t48 & t47);
    t50 = (~(t45));
    t51 = (~(t49));
    t52 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t52 & t50);
    t53 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t53 & t51);
    goto LAB17;

LAB18:    *((unsigned int *)t54) = 1;
    goto LAB21;

LAB20:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB21;

LAB22:    t67 = (t0 + 784U);
    t68 = *((char **)t67);
    memset(t69, 0, 8);
    t67 = (t68 + 4);
    t70 = *((unsigned int *)t67);
    t71 = (~(t70));
    t72 = *((unsigned int *)t68);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t67) != 0)
        goto LAB27;

LAB28:    t77 = *((unsigned int *)t54);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = (t54 + 4);
    t81 = (t69 + 4);
    t82 = (t76 + 4);
    t83 = *((unsigned int *)t80);
    t84 = *((unsigned int *)t81);
    t85 = (t83 | t84);
    *((unsigned int *)t82) = t85;
    t86 = *((unsigned int *)t82);
    t87 = (t86 != 0);
    if (t87 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB24;

LAB25:    *((unsigned int *)t69) = 1;
    goto LAB28;

LAB27:    t75 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB28;

LAB29:    t88 = *((unsigned int *)t76);
    t89 = *((unsigned int *)t82);
    *((unsigned int *)t76) = (t88 | t89);
    t90 = (t54 + 4);
    t91 = (t69 + 4);
    t92 = *((unsigned int *)t90);
    t93 = (~(t92));
    t94 = *((unsigned int *)t54);
    t95 = (t94 & t93);
    t96 = *((unsigned int *)t91);
    t97 = (~(t96));
    t98 = *((unsigned int *)t69);
    t99 = (t98 & t97);
    t100 = (~(t95));
    t101 = (~(t99));
    t102 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t102 & t100);
    t103 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t103 & t101);
    goto LAB31;

LAB32:    *((unsigned int *)t104) = 1;
    goto LAB35;

LAB34:    t111 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t111) = 1;
    goto LAB35;

LAB36:    t117 = (t0 + 876U);
    t118 = *((char **)t117);
    memset(t119, 0, 8);
    t117 = (t118 + 4);
    t120 = *((unsigned int *)t117);
    t121 = (~(t120));
    t122 = *((unsigned int *)t118);
    t123 = (t122 & t121);
    t124 = (t123 & 1U);
    if (t124 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t117) != 0)
        goto LAB41;

LAB42:    t127 = *((unsigned int *)t104);
    t128 = *((unsigned int *)t119);
    t129 = (t127 | t128);
    *((unsigned int *)t126) = t129;
    t130 = (t104 + 4);
    t131 = (t119 + 4);
    t132 = (t126 + 4);
    t133 = *((unsigned int *)t130);
    t134 = *((unsigned int *)t131);
    t135 = (t133 | t134);
    *((unsigned int *)t132) = t135;
    t136 = *((unsigned int *)t132);
    t137 = (t136 != 0);
    if (t137 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB38;

LAB39:    *((unsigned int *)t119) = 1;
    goto LAB42;

LAB41:    t125 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t125) = 1;
    goto LAB42;

LAB43:    t138 = *((unsigned int *)t126);
    t139 = *((unsigned int *)t132);
    *((unsigned int *)t126) = (t138 | t139);
    t140 = (t104 + 4);
    t141 = (t119 + 4);
    t142 = *((unsigned int *)t140);
    t143 = (~(t142));
    t144 = *((unsigned int *)t104);
    t145 = (t144 & t143);
    t146 = *((unsigned int *)t141);
    t147 = (~(t146));
    t148 = *((unsigned int *)t119);
    t149 = (t148 & t147);
    t150 = (~(t145));
    t151 = (~(t149));
    t152 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t152 & t150);
    t153 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t153 & t151);
    goto LAB45;

LAB46:    *((unsigned int *)t3) = 1;
    goto LAB49;

}


extern void work_m_00000000002076138448_0606894571_init()
{
	static char *pe[] = {(void *)Cont_29_0};
	xsi_register_didat("work_m_00000000002076138448_0606894571", "isim/AER_Input_Test_isim_beh.exe.sim/work/m_00000000002076138448_0606894571.didat");
	xsi_register_executes(pe);
}
