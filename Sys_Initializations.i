#line 1 "C:\\Users\\US\\Desktop\\CoalSystem\\Sys3\\Sys3\\Sys_Initializations.ixx"

export __preprocessed_module Sys_Initializations;

import <iostream>;
import <string>;
import <string_view>;
import <array>;
import <expected>;

export namespace __SYS_CMD_INITIALIZATIONS
{
	export std::expected<std::string_view, std::string_view> __GET_SYS_CMD(size_t __T__)
	{
		constexpr std::array<std::string_view, 1> __CMD__ = {
			"exit;"
		};
		const bool _B = ((__T__ < __CMD__.size()) || (__T__ > __CMD__.size()));
		if (_B == true) 
		{
			return std::unexpected("\nSYS3= INTERNAL_EXCEPTIONS(INVALID__T__)\n\n");
		}
		return __CMD__[__T__];
}

export namespace __SYS_BRANCH_INITIALIZATIONS
{
	export void __BRANCH_OUT_EXCEPTIONS(std::string& c)
	{
		std::cout << "\nSYS3= EXCEPTIONS(INVALID__CMD__(" << c << "))" << "\n\n";
	}
}



export namespace Sys_Initializations
{
	bool Initialize = false;
	void Init(std::string& c)
	{

		Initialize = true;
		while (Initialize == true)
		{
			std::cout << "SYS3= ";
			std::getline(std::cin, c);
			if (c == __SYS_CMD_INITIALIZATIONS::__GET_SYS_CMD(0))
			{
				Initialize = false;
				break;
			}
			else
			{
				__SYS_BRANCH_INITIALIZATIONS::__BRANCH_OUT_EXCEPTIONS(c);
			}
		}
	}
}
