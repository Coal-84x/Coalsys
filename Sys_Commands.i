#line 1 "C:\\Users\\US\\Desktop\\CoalSystem\\Sys3\\Sys3\\Sys_Commands.ixx"
export __preprocessed_module Sys_Commands;
import <string_view>;
import <array>;

export namespace __SYS_INITIALIZATIONS_COMMANDS
{
	export template
		<
			typename __T__,
			std::size_t __I__
		>
	size_t __CALCULATED__CMD__SIZE(std::array<__T__, __I__> _A)
	{
		return _A.size();
	}
	export std::string_view __GET_INITIALIZED_COMMANDS(size_t _I)
	{
		const std::array<std::string_view, 1> __CMD__ =
		{
			"exit;"
		};
		if ((_I < __CALCULATED__CMD__SIZE<std::string_view, __CMD__.size()>(__CMD__))
			|| (_I > __CALCULATED__CMD__SIZE<std::string_view, __CMD__.size()>(__CMD__)))
		{
			return "-";
		}
		return __CMD__[_I];
	}
}
