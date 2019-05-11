
project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "on"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    files{
       "imconfig.h",
	   "imgui.h",
	   "imgui.cpp",
	   "imgui_draw.cpp",
	   "imgui_demo.cpp",
	   "imgui_internal.h",
	   "imgui_widgets.cpp",
	   "imstb_truetype.h",
	   "imstb_rectpack.h",
	   "imstb_textedit.h"  
    }

    filter "system:windows"
        systemversion "latest"
		
    filter "configurations:Debug"
		defines "HZ_DEBUG"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		defines "HZ_RELEASE"
		runtime "Release"
		optimize "on"
