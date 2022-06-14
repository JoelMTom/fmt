project "fmt"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/format.cc",
        "include/fmt/**.h"
    }


    includedirs
    {
        "include/"
    }

    location "%{wks.location}/Havoc/Dependencies/fmt"


    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"