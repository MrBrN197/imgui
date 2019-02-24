
project "ImGui"
    kind "StaticLib"
    language "C++"

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
        staticruntime "On"
        systemversion "latest"
		cppdialect "C++14"
	
		
    filter {"system:windows", "configurations:release"}
        buildoptions "/MT"
