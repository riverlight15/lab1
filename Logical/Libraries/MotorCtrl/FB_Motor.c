
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "MotorCtrl.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_Motor(struct FB_Motor* inst)
{
	REAL ttt;
	ttt = inst->u/inst->ke;
	ttt = ttt - inst ->w;
	ttt = ttt * inst->dt / inst ->Tm;
	inst->integrator.in = ttt;
	inst->integrator.dt = inst->dt;
	inst->integrator1.dt = inst->dt;
	FB_Integrator(&inst->integrator);
	ttt = inst->integrator.out;
	inst->w = ttt;
	ttt = inst->w;
	inst->integrator1.in = ttt;
	FB_Integrator(&inst->integrator1);
	inst->phi = inst->integrator1.out;	
}
