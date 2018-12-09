# Microsoft Developer Studio Project File - Name="las2dem" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=las2dem - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "las2dem.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "las2dem.mak" CFG="las2dem - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "las2dem - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "las2dem - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "las2dem - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "..\inc" /I "..\src" /I ".\src\sr_api" /I ".\src\jpg_api" /I ".\src\png_api" /I ".\src\zlib_api" /I ".\src\geotiff_api" /I ".\src\tiff_api" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /i "../src" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 ../lib/LASlib.lib ./src/jpg_api/libjpeg.lib ./src/png_api/libpng.lib ./src/zlib_api/zlib.lib ./src/tiff_api/tiff.lib ./src/geotiff_api/geotiff.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy Release\las2dem.exe ..\bin\las2dem.exe
# End Special Build Tool

!ELSEIF  "$(CFG)" == "las2dem - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /I "..\inc" /I "..\src" /I ".\src\sr_api" /I ".\src\jpg_api" /I ".\src\png_api" /I ".\src\zlib_api" /I ".\src\geotiff_api" /I ".\src\tiff_api" /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /i "..\..\src" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 ../libD/LASlib.lib ./src/jpg_api/libjpeg.lib ./src/png_api/libpng.lib ./src/zlib_api/zlib.lib ./src/tiff_api/tiff.lib ./src/geotiff_api/geotiff.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy Debug\las2dem.exe ..\bin\las2dem.exe
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "las2dem - Win32 Release"
# Name "las2dem - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\fopengzipped.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\geoprojectionconverter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\las2dem.cpp
# End Source File
# Begin Source File

SOURCE=.\src\predicates.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srbufferinmemory.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srbufferrowbands.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srbufferrows.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srbuffersimple.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srbuffertiles.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srwriteopener.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srwriter_bil.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srwriter_jpg.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srwriter_png.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srwriter_tif.cpp
# End Source File
# Begin Source File

SOURCE=.\src\sr_api\srwritetiled.cpp
# End Source File
# Begin Source File

SOURCE=.\src\triangulate.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\inc\lasdefinitions.h
# End Source File
# Begin Source File

SOURCE=..\inc\laspointreader.h
# End Source File
# Begin Source File

SOURCE=..\inc\lasreader.h
# End Source File
# Begin Source File

SOURCE=.\src\triangulate.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
