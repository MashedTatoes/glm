project "glm"
    kind "StaticLib"
    language "C++"
    staticruntime "on"
    warnings "off"
    
    targetdir ("bin/" .. outputdir)
    objdir ("obj/" .. outputdir)

    files
    {
        "glm/**.cpp",
        "glm/**.hpp",
        "glm/**.inl"
    }

    includedirs
    {
        "."
    }

    
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"