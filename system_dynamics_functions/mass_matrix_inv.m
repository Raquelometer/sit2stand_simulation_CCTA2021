function M_inv = mass_matrix_inv(th1,th2,th3,g,l1,l2,l3,m1,m2,m3)
%PA3L_MASSMATRIXINV
%    M_INV = PA3L_MASSMATRIXINV(TH1,TH2,TH3,G,L1,L2,L3,M1,M2,M3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    28-Jul-2020 11:25:29

t2 = sin(th3);
t3 = cos(th3);
t4 = l3./2.0;
t5 = l1+l2+t4;
t6 = l1+l2;
t7 = l3.^2;
t8 = (m3.*t7)./1.2e1;
t9 = t2.*t5;
t20 = t2.*t6;
t10 = t9-t20;
t11 = t2.*t10;
t12 = t3.*t5;
t13 = t3-1.0;
t22 = t6.*t13;
t14 = t12-t22;
t15 = t3.*t14;
t54 = l1.*t3;
t16 = t11+t15-t54;
t17 = (l3.*m3.*t16)./2.0;
t18 = t8+t17;
t19 = cos(th2);
t21 = sin(th2);
t24 = t2.*t19;
t25 = t3.*t21;
t26 = t24+t25;
t27 = t10.*t19;
t28 = t14.*t21;
t29 = l1.*t21;
t30 = t27+t28-t29;
t31 = t3.*t19;
t32 = t2.*t21;
t33 = t31-t32;
t34 = t19-1.0;
t35 = l1.*t34;
t36 = t10.*t21;
t37 = t14.*t19;
t38 = t35+t36-t37;
t55 = t30.*t33;
t56 = t26.*t38;
t23 = t55+t56;
t48 = t26.*t30;
t49 = t33.*t38;
t39 = t48-t49;
t40 = l2./2.0;
t41 = l1+t40;
t43 = t21.*t41;
t44 = t29-t43;
t45 = t19.*t41;
t46 = t35-t45;
t52 = t21.*t44;
t53 = t19.*t46;
t42 = t52+t53;
t76 = t19.*t44;
t77 = t21.*t46;
t47 = t76-t77;
t50 = l2.^2;
t51 = (m2.*t50)./1.2e1;
t57 = (l3.*m3.*t39)./2.0;
t58 = t8+t57;
t59 = t7.^2;
t60 = m3.^2;
t61 = t3.^2;
t62 = t2.^2;
t63 = t19.^2;
t64 = t61.^2;
t65 = t62.^2;
t66 = t21.^2;
t67 = t3.*t10;
t68 = l1.*t2;
t84 = t2.*t14;
t69 = t67+t68-t84;
t70 = t23.^2;
t71 = m3.*t70;
t72 = t39.^2;
t73 = m3.*t72;
t74 = t42.^2;
t75 = m2.*t74;
t78 = t47.^2;
t79 = m2.*t78;
t80 = l1.^2;
t81 = (m1.*t80)./3.0;
t82 = t8+t51+t71+t73+t75+t79+t81;
t83 = m3.*t16.*t39;
t85 = m3.*t23.*t69;
t88 = (l2.*m2.*t42)./2.0;
t86 = t8+t51+t83+t85-t88;
t87 = t18.*t82;
t145 = t58.*t86;
t89 = t87-t145;
t90 = (t59.*t60.*t61)./4.8e1;
t91 = (t59.*t60.*t64)./4.8e1;
t92 = (t59.*t60.*t62)./4.8e1;
t93 = (t59.*t60.*t65)./4.8e1;
t94 = (l2.*l3.*t3.*t7.*t60)./2.4e1;
t95 = (t59.*t60.*t63.*t64)./4.8e1;
t96 = (t59.*t60.*t61.*t62)./2.4e1;
t97 = (t59.*t60.*t63.*t65)./4.8e1;
t98 = (t59.*t60.*t64.*t66)./4.8e1;
t99 = (t59.*t60.*t65.*t66)./4.8e1;
t100 = (l2.*l3.*t3.*t7.*t60.*t61)./1.2e1;
t101 = (t7.*t50.*t60.*t61)./1.2e1;
t102 = (m2.*m3.*t7.*t50.*t63)./4.8e1;
t103 = (m2.*m3.*t7.*t50.*t61)./4.8e1;
t104 = (m2.*m3.*t7.*t50.*t66)./4.8e1;
t105 = (m2.*m3.*t7.*t50.*t62)./4.8e1;
t106 = (t7.*t50.*t60.*t61.*t63)./1.2e1;
t107 = (l1.*l3.*t2.*t7.*t21.*t60)./2.4e1;
t108 = (t7.*t50.*t60.*t62.*t63)./1.2e1;
t109 = (t7.*t50.*t60.*t61.*t66)./1.2e1;
t110 = (l2.*l3.*m2.*m3.*t3.*t50)./2.4e1;
t111 = (t7.*t50.*t60.*t62.*t66)./1.2e1;
t112 = (l1.*l3.*t3.*t7.*t19.*t60.*t61)./2.4e1;
t113 = (l2.*l3.*t3.*t7.*t60.*t62)./1.2e1;
t114 = (t59.*t60.*t61.*t62.*t63)./2.4e1;
t115 = (t59.*t60.*t61.*t62.*t66)./2.4e1;
t116 = (l2.*l3.*t3.*t7.*t60.*t61.*t63)./1.2e1;
t117 = (l2.*l3.*t3.*t7.*t60.*t61.*t66)./1.2e1;
t118 = (l1.*l3.*t3.*t7.*t19.*t60.*t62)./2.4e1;
t119 = (l1.*l2.*m2.*m3.*t7.*t19)./2.4e1;
t120 = (l2.*l3.*t3.*t7.*t60.*t62.*t63)./1.2e1;
t121 = (l2.*l3.*t3.*t7.*t60.*t62.*t66)./1.2e1;
t122 = (l1.*l2.*t7.*t19.*t60.*t61)./1.2e1;
t123 = (l1.*l2.*t7.*t19.*t60.*t62)./1.2e1;
t124 = (l1.*l2.*t7.*t19.*t60.*t65)./4.0;
t125 = (l1.*l3.*t2.*t21.*t50.*t60.*t62)./2.0;
t126 = (l1.*l2.*t7.*t19.*t60.*t61.*t62)./4.0;
t127 = (l1.*l3.*m2.*m3.*t3.*t19.*t50)./1.2e1;
t128 = (l1.*l3.*m2.*m3.*t2.*t21.*t50)./6.0;
t129 = (l1.*l3.*t2.*t21.*t50.*t60.*t61)./2.0;
t130 = (l1.*l2.*t2.*t3.*t7.*t21.*t60.*t62)./4.0;
t131 = (l1.*l2.*t2.*t3.*t7.*t21.*t60.*t61)./4.0;
t132 = (l1.*l2.*m2.*m3.*t7.*t19.*t61)./8.0;
t133 = (l1.*l2.*m2.*m3.*t7.*t19.*t62)./8.0;
t134 = t16.^2;
t135 = m3.*t134;
t136 = t69.^2;
t137 = m3.*t136;
t138 = (m2.*t50)./3.0;
t139 = t8+t135+t137+t138;
t140 = t82.*t139;
t141 = t86.^2;
t142 = t140-t141;
t143 = (m3.*t7.*t142)./3.0;
t144 = (t59.*t60)./4.8e1;
t150 = (t7.*t50.*t60.*t62)./1.2e1;
t151 = (t59.*t60.*t61.*t63)./4.8e1;
t152 = (t59.*t60.*t62.*t63)./4.8e1;
t153 = (t59.*t60.*t61.*t66)./4.8e1;
t154 = (t59.*t60.*t62.*t66)./4.8e1;
t155 = (m2.*m3.*t7.*t50)./4.8e1;
t156 = (l1.*l3.*t3.*t7.*t19.*t60)./2.4e1;
t157 = (l2.*l3.*t3.*t7.*t60.*t63)./2.4e1;
t158 = (l2.*l3.*t3.*t7.*t60.*t66)./2.4e1;
t159 = (l1.*l3.*t2.*t7.*t21.*t60.*t62)./2.4e1;
t160 = (m2.*m3.*t7.*t50.*t61.*t63)./4.8e1;
t161 = (m2.*m3.*t7.*t50.*t62.*t63)./4.8e1;
t162 = (m2.*m3.*t7.*t50.*t61.*t66)./4.8e1;
t163 = (m2.*m3.*t7.*t50.*t62.*t66)./4.8e1;
t164 = (l1.*l3.*t2.*t7.*t21.*t60.*t61)./2.4e1;
t165 = (l2.*l3.*m2.*m3.*t3.*t50.*t63)./2.4e1;
t166 = (l2.*l3.*m2.*m3.*t3.*t50.*t66)./2.4e1;
t146 = t90-t91+t92-t93+t94+t95-t96+t97+t98+t99-t100-t101+t102+t103+t104+t105+t106+t107+t108+t109+t110+t111+t112-t113+t114+t115+t116+t117+t118+t119+t120+t121+t122+t123+t124+t125+t126+t127+t128+t129+t130+t131+t132+t133-t150-t151-t152-t153-t154-t155-t156-t157-t158-t159-t160-t161-t162-t163-t164-t165-t166;
t147 = t58.*t146;
t167 = t18.*t89;
t148 = t143+t147-t167;
t149 = 1.0./t148;
t168 = (m2.*m3.*t7.*t50)./3.6e1;
t169 = (m2.*m3.*t7.*t50.*t63)./1.2e1;
t170 = (m2.*m3.*t7.*t50.*t66)./1.2e1;
t171 = (t7.*t50.*t60.*t62.*t63)./3.0;
t172 = (t7.*t50.*t60.*t62.*t66)./3.0;
t173 = (l1.*l2.*m2.*m3.*t7.*t19)./6.0;
t174 = (l1.*l2.*t7.*t19.*t60.*t62)./3.0;
t175 = (l1.*l2.*t2.*t3.*t7.*t21.*t60)./4.0;
t176 = t146.*t149;
M_inv = reshape([(t91+t93+t96+t100+t101+t113+t144-(t59.*t60.*t61)./2.4e1-(t59.*t60.*t62)./2.4e1+(m2.*m3.*t7.*t50)./9.0+(t7.*t50.*t60.*t62)./3.0-(l2.*l3.*t3.*t7.*t60)./1.2e1)./(t143-t18.*t89+t58.*(t90+t92+t94+t95+t97+t98+t99+t102+t103+t104+t105+t106+t107+t108+t109+t110+t111+t112+t114+t115+t116+t117+t118+t119+t120+t121+t122+t123+t124+t125+t126+t127+t128+t129+t130+t131+t132+t133-(t59.*t60.*t64)./4.8e1-(t59.*t60.*t65)./4.8e1-(m2.*m3.*t7.*t50)./4.8e1-(t7.*t50.*t60.*t61)./1.2e1-(t7.*t50.*t60.*t62)./1.2e1-(t59.*t60.*t61.*t62)./2.4e1-(t59.*t60.*t61.*t63)./4.8e1-(t59.*t60.*t62.*t63)./4.8e1-(t59.*t60.*t61.*t66)./4.8e1-(t59.*t60.*t62.*t66)./4.8e1-(l1.*l3.*t3.*t7.*t19.*t60)./2.4e1-(l2.*l3.*t3.*t7.*t60.*t61)./1.2e1-(l2.*l3.*t3.*t7.*t60.*t62)./1.2e1-(l2.*l3.*t3.*t7.*t60.*t63)./2.4e1-(l2.*l3.*t3.*t7.*t60.*t66)./2.4e1-(m2.*m3.*t7.*t50.*t61.*t63)./4.8e1-(m2.*m3.*t7.*t50.*t62.*t63)./4.8e1-(m2.*m3.*t7.*t50.*t61.*t66)./4.8e1-(m2.*m3.*t7.*t50.*t62.*t66)./4.8e1-(l2.*l3.*m2.*m3.*t3.*t50.*t63)./2.4e1-(l2.*l3.*m2.*m3.*t3.*t50.*t66)./2.4e1-(l1.*l3.*t2.*t7.*t21.*t60.*t61)./2.4e1-(l1.*l3.*t2.*t7.*t21.*t60.*t62)./2.4e1)),-t149.*(-t90-t92-t94+t95+t97+t98+t99+t106+t107+t109+t112+t114+t115+t116+t117+t118+t120+t121+t122+t144-t151-t152-t153-t154-t156-t157-t158-t159-t164+t168+t169+t170+t171+t172+t173+t174+t175),t176,-t149.*(-t90-t92-t94+t95+t97+t98+t99+t106+t107+t109+t112+t114+t115+t116+t117+t118+t120+t121+t122+t144+t168+t169+t170+t171+t172+t173+t174+t175-(t59.*t60.*t61.*t63)./4.8e1-(t59.*t60.*t62.*t63)./4.8e1-(t59.*t60.*t61.*t66)./4.8e1-(t59.*t60.*t62.*t66)./4.8e1-(l1.*l3.*t3.*t7.*t19.*t60)./2.4e1-(l2.*l3.*t3.*t7.*t60.*t63)./2.4e1-(l2.*l3.*t3.*t7.*t60.*t66)./2.4e1-(l1.*l3.*t2.*t7.*t21.*t60.*t61)./2.4e1-(l1.*l3.*t2.*t7.*t21.*t60.*t62)./2.4e1),-t149.*(t58.^2-(m3.*t7.*t82)./3.0),-t89.*t149,t176,-t89.*t149,t142.*t149],[3,3]);
