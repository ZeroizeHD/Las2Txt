****************************************************************

  batch_change_version.bat

      run this batch script either by double click or in the
      command line to change the version of the LAS files. this
      tool allows you to change it to *any* version number 
      (e.g. you can even change the file to version 2.11). you
      may make your file unreadable if you change it to the
      wrong version.

                       questions or bugs: isenburg@cs.unc.edu

      created on February 2nd, 2009 for airborne1.com
              (c) copyright martin isenburg
  
****************************************************************

example usage:

>> batch_change_version.bat data\test000.las 1.1

changes the version of file 'data\test000.las' to 1.1

>> batch_change_version.bat data\*.las 1.5

changes the version of all '*.las' files in directory 'data\' to 1.5

>> batch_change_version.bat data\flight\flight*.las 1.1

changes the version of all 'flight*.las' files in directory 'data\flight\' to 1.1

>> batch_change_version.bat 
>> input file (or wildcard): data\*.las
>> version: 1.1

changes the version of all '*.las' files in directory 'data\' to 1.1


---------------------------------------------------------------


under the hood the batch script uses the lasinfo.exe. you can
do the following with this tool:

****************************************************************

  LASinfo : simply prints the header contents and a short
            summary of the points. when there are differences
            between header info and point content they are
            reported as a warning.

            can also be used to modify entries in the header
            as described below

****************************************************************

example usage:

>> lasinfo lidar.las

reports all information 

>> lasinfo -o lidar_info.txt -i lidar.las

reports all information to a text file called lidar_info.txt

>> lasinfo -i lidar.las -no_variable

avoids reporting the contents of the variable length records

>> lasinfo -i lidar.las -nocheck

omits reading over all the points. only reports header information

>> lasinfo -i lidar.las -repair

if there are missing or wrong entries in the header they are corrected

>> lasinfo -i lidar.las -repair_boundingbox

reads all points, computes their bounding box, and updates it in the header

>> lasinfo -i lidar.las -file_creation 8 2007

sets the file creation day/year in the header to 8/2007

>> lasinfo -i lidar.las -system_identifier "hello world!"

copies the first 31 characters of the string into the system_identifier field of the header 

>> lasinfo -i lidar.las -version 1.1 -quiet

changes the version of the lidar file to be 1.1 while suppressing all control output

>> lasinfo -i lidar.las -generating_software "this is a test (-:"

copies the first 31 characters of the string into the generating_software field of the header 

for more info:

C:\lastools\bin>lasinfo -h
usage:
lasinfo lidar.las
lasinfo -no_variable lidar.las
lasinfo -no_variable -nocheck lidar.las
lasinfo -i lidar.las -o lidar_info.txt
lasinfo -i lidar.las -repair
lasinfo -i lidar.las -repair_bounding_box -file_creation 8 2007
lasinfo -i lidar.las -system_identifier "hello world!" -generating_software "this is a test (-:"

----

if you find bugs let me (isenburg@cs.unc.edu) know.