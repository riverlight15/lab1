
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
		u : {REDUND_UNREPLICABLE} REAL; (*������� ����������*)
	END_VAR
	VAR_OUTPUT
		w : {REDUND_UNREPLICABLE} REAL; (*������� ��������*)
		phi : {REDUND_UNREPLICABLE} REAL; (*��������� � ��������*)
	END_VAR
	VAR
		integrator1 : {REDUND_UNREPLICABLE} FB_Integrator;
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*����������*)
		Tm : {REDUND_UNREPLICABLE} REAL; (*������ ���������� �������*)
		ke : {REDUND_UNREPLICABLE} REAL; (*���������� ��� ���������*)
		dt : {REDUND_UNREPLICABLE} REAL; (*��� �������*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Regulator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : {REDUND_UNREPLICABLE} REAL; (*��������������� ����� �������� ������������ � �������� ��������� �������� ���� ���*)
	END_VAR
	VAR_OUTPUT
		u : {REDUND_UNREPLICABLE} REAL; (*���������� ���������� �� ���� ���*)
	END_VAR
	VAR
		k_p : {REDUND_UNREPLICABLE} REAL; (*���������������� ����������� ����������*)
		k_i : {REDUND_UNREPLICABLE} REAL; (*������������ ����������� ����������*)
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*����������*)
		iyOLD : {REDUND_UNREPLICABLE} REAL; (*�������� ����������� �������� ����� �����������������*)
		max_abs_value : {REDUND_UNREPLICABLE} REAL; (*������� ����� �����������*)
		dt : {REDUND_UNREPLICABLE} REAL; (*��� �������*)
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