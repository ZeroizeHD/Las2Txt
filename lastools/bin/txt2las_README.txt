****************************************************************

  txt2las: converts LIDAR data from a standard ASCII format
           into the more efficient binary LAS representation
 
****************************************************************

example usage:

>> txt2las -i lidar.taxyz -o lidar.las -parse ssxyz

converts ASCII file and uses the 3rd, 4th, and 5th entry of each
line as the x, y, and z coordinate of each point

>> txt2las -itxt -o lidar.las -parse ssxyz < lidar.taxyz

same as above but it reads the text file from stdin

>> txt2las -skip 3 -i lidar.txt.gz -o lidar.las -parse txyzsa

converts a gzipped ASCII file and uses the 1st entry of each line
as the gps time, the 3rd, 4th, and 5th entry as the x, y, and z
coordinate of each point, and the 6th entry as the scan angle. it
skips the first three lines of the ASCII data file.

>> txt2las -i lidar.txt.gz -o lidar.las -parse xyzRGB

converts a gzipped ASCII file and uses the 1st 2nd, and 3rd entry
of each line as the x, y, and z coordinate of each point, and the
4th, 5th, and 6th entry as the RGB color. the created LAS file
will use the LAS format version 1.2

for more info:

C:\lastools\bin>txt2las -h
usage:
txt2las -parse tsxyz lidar.txt
txt2las -parse txyzar lidar.txt.gz lidar.laz
txt2las -parse xyz -scale 0.02 -i lidar.txt -o lidar.laz
txt2las -parse xyzsst -verbose -scale 0.05 lidar.txt
txt2las -parse xsysz -xyz_scale 0.02 0.02 0.01 lidar.txt
txt2las -h
---------------------------------------------
The '-parse tsxyz' flag specifies how to interpret
each line of the ASCII file. For example, 'tsxyzssa'
means that the first number is the gpstime, the next
number should be skipped, the next three numbers are
the x, y, and z coordinate, the next two should be
skipped, and the next number is the scan angle.
The other supported entries are i - intensity,
n - number of returns of given pulse, r - number
of return, c - classification, u - user data, and
p - point source ID, e - edge of flight line flag, and
d - direction of scan flag, R - red channel of RGB color,
G - green channel of RGB color, B - blue channel of RGB color.
---------------------------------------------
The '-scale 0.02' flag specifies the quantization. The
default value of 0.01 means that the smallest increment
two between coordinates is 0.01. If measurements are in
meters this corresponds to centimeter accuracy, which is
commonly considered sufficient for LIDAR data.
---------------------------------------------
Other parameters such as '-xyz_offset 500000 2000000 0'
or '-xyz_scale 0.02 0.02 0.01' or '-file_creation 67 2003'
or '-system_identifier "Airborne One Leica 50,000 Hz"'
or '-generating_software "TerraScan"' are available too.
Read the source code for documentation.

---------------

if you find bugs let me (isenburg@cs.unc.edu) know.
