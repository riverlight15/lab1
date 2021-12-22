
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
void FB_Regulator(struct FB_Regulator* inst)
{
	REAL ttt;
	ttt = inst->e*inst->k_i;
	ttt += inst->iyOLD;
	FB_Integrator(&inst->integrator);
	inst->integrator.in = ttt;
	inst->integrator.dt = inst->dt;
	
	if(inst->e*inst->k_p>inst->max_abs_value)
	{
		ttt = inst->integrator.out + inst->max_abs_value;
	}
	if(inst->e*inst->k_p<inst->max_abs_value)
	{
		ttt = inst->integrator.out + inst->e * inst->k_p;
	}
	if(ttt > inst->max_abs_value)
	{
		inst->u = inst->max_abs_value;
		inst->iyOLD = ttt - inst->max_abs_value;
	}
	else
	{
		inst->u = ttt;
		inst->iyOLD = 0;
	}
}
