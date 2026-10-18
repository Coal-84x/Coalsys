// DEFINED LIBRARIES
export module Sys_Initializations;
// BUILT - IN CPP LIBRARIES
import <iostream>;
import <string>;
import <string_view>;
import <expected>;

export namespace __SYS_BRANCH_INITIALIZATIONS
{
	export void __BRANCH_OUT_EXCEPTIONS(std::string& c)
	{
		std::cout << "\nSYS3= EXCEPTIONS(INVALID__CMD__(" << c << "))" << "\n\n";
		c.clear();
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
			if (c == "exit;" || Initialize == false)
			{
				Initialize = false;
				c.clear();
			}
			else
			{
				__SYS_BRANCH_INITIALIZATIONS::__BRANCH_OUT_EXCEPTIONS(c);
			}
		}
	}
}