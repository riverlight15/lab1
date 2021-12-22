
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Integrator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR
		dt : {REDUND_UNREPLICABLE} REAL;
		prev : {REDUND_UNREPLICABLE} REAL;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Motor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : {REDUND_UNREPLICABLE} REAL; (*Входное напряжение*)
	END_VAR
	VAR_OUTPUT
		w : {REDUND_UNREPLICABLE} REAL; (*частота вращения*)
		phi : {REDUND_UNREPLICABLE} REAL; (*положение в радианах*)
	END_VAR
	VAR
		integrator1 : {REDUND_UNREPLICABLE} FB_Integrator;
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*интегратор*)
		Tm : {REDUND_UNREPLICABLE} REAL; (*электр постоянная времени*)
		ke : {REDUND_UNREPLICABLE} REAL; (*постоянная ЭДС двигателя*)
		dt : {REDUND_UNREPLICABLE} REAL; (*шаг расчета*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Regulator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : {REDUND_UNREPLICABLE} REAL; (*рассогласование между задающим воздействием и реальной скоростью вращения вала ДПТ*)
	END_VAR
	VAR_OUTPUT
		u : {REDUND_UNREPLICABLE} REAL; (*напряжение подаваемое на вход ДПТ*)
	END_VAR
	VAR
		k_p : {REDUND_UNREPLICABLE} REAL; (*пропорциональный коэффициент регулятора*)
		k_i : {REDUND_UNREPLICABLE} REAL; (*интегральный коэффициент регулятора*)
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*интегратор*)
		iyOLD : {REDUND_UNREPLICABLE} REAL; (*хранение предыдущего значения схемы противонакопления*)
		max_abs_value : {REDUND_UNREPLICABLE} REAL; (*граница блока ограничения*)
		dt : {REDUND_UNREPLICABLE} REAL; (*шаг расчета*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Motor1 (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		w : {REDUND_UNREPLICABLE} REAL;
		phi : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR
		integrator1 : {REDUND_UNREPLICABLE} FB_Integrator;
		integrator : {REDUND_UNREPLICABLE} FB_Integrator;
		Tm : {REDUND_UNREPLICABLE} REAL;
		ke : {REDUND_UNREPLICABLE} REAL;
		dt : {REDUND_UNREPLICABLE} REAL;
	END_VAR
END_FUNCTION_BLOCK
