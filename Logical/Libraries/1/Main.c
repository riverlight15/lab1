 
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	t = 0;
	fb_regulator.k_i = 0.016;
	fb_regulator.k_p = 0.0064;
	fb_motor.dt = 0.01;
	fb_motor.Tm = 0.004;
	fb_motor.ke = 0.0002;
	fb_regulator.dt = 0.01;
	fb_regulator.e = 0;
	fb_regulator.max_abs_value = 300;
	fb_motor1.u = 0;
	fb_motor1.dt = 0.01;
	fb_motor1.Tm = 0.01;
	fb_motor1.ke = 0.2;
	Enable = 1;
}

void _CYCLIC ProgramCyclic(void)
{
	if (Enable == 1)
	{
		Speed = 100;
	}
	if (Enable == 0)
	{
		Speed = 0;
	}
	t = t + 0.01;
	fb_regulator.e = Speed - fb_motor.w;
	FB_Regulator(&fb_regulator);
	fb_motor.u = fb_regulator.u;
	FB_Motor(&fb_motor);
	FB_Motor1(&fb_motor1);
	//ResW = fb_motor.w;
	//ResPhi = fb_motor.phi;
	fb_motor1.u = Speed - fb_motor1.w;
	if ((t>2))
	{
		Enable =!Enable;
		t = 0;
	}
}

void _EXIT ProgramExit(void)
{

}

