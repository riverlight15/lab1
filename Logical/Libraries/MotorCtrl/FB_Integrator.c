
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
void FB_Integrator(struct FB_Integrator* inst)
{
	inst->out = inst->prev + ((inst->in) * inst->dt);
	inst->prev = inst->out;
}
