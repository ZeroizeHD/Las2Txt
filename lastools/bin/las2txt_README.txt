****************************************************************

  las2txt: converts from binary LAS to a standard ASCII format
 
****************************************************************

example usage:

>> las2txt -i lidar.las -o lidar.txt -parse xyz

converts LAS file to ASCII and places the x, y, and z coordinate
of each point at the 1st, 2nd, and 3rd entry of each line. the
entries are seperated by a space

>> las2txt -i lidar.las -o lidar.txt -parse txyzr -sep comma

converts LAS file to ASCII and places the gps_time as the first
entry, the x, y, and z coordinates at the 2nd, 3rd, and 4th entry
and the number of the return as the 5th entry of each line. the
entries are separated by a comma.
 
>> las2txt -i lidar.las -o lidar.txt -parse xyzRGB

converts LAS file to ASCII and places the x, y, and z coordinates
at the 1st, 2nd, and 3rd entry and the r, g, and b value of the
RGB color as the 4th, 5th, and 6th entry of each line. the entries
are separated by a space. note that lidar.las should be format 1.2
or higher (because 1.0 and 1.1 do not support RGB colors).

>> las2txt -i lidar.las -o lidar.txt -parse xyzia -sep semicolon -header pound

converts LAS file to ASCII and places the x, y, and z coordinate
at the 1st, 2nd, and 3rd entry, the intensity at the 4th and the
scan angle as the 5th entry of each line. the entries are separated
by a semicolon. at the beginning of the file we print the header
information as a comment starting with a '#' symbol.

>> las2txt -i lidar.las -o lidar.txt -parse xyzcu -sep tab -header percent

converts LAS file to ASCII and places the x, y, and z coordinate
at the 1st, 2nd, and 3rd entry, the classification at the 4th and
the user data as the 5th entry of each line. the entries are
separated by a semicolon. at the beginning of the file we print
the header information as a comment starting with a '%' symbol.

C:\lastools\bin>las2txt -h
usage:
las2txt lidar.las
las2txt -parse xyziar lidar.las lidar.txt
las2txt -i lidar.las -o lidar.laz -parse xyz
las2txt -parse xyzt -verbose lidar.las
las2txt -parse xyz lidar.las.gz
las2txt -h
---------------------------------------------
The '-parse txyz' flag specifies how to format each
each line of the ASCII file. For example, 'txyzia'
means that the first number of each line should be the
gpstime, the next three numbers should be the x, y, and
z coordinate, the next number should be the intensity
and the next number should be the scan angle.
The supported entries are a - scan angle, i - intensity,
n - number of returns for given pulse, r - number of
this return, c - classification, u - user data,
p - point source ID, e - edge of flight line flag, and
d - direction of scan flag, R - red channel of RGB color,
G - green channel of RGB color, B - blue channel of RGB color.
---------------------------------------------
The '-sep space' flag specifies what separator to use. The
default is a space but 'tab', 'komma', 'colon', 'hyphen',
'dot', or 'semicolon' are other possibilities.
---------------------------------------------
The '-header pound' flag results in the header information
being printed at the beginning of the ASCII file in form of
a comment that starts with the special character '#'. Also
possible are 'percent', 'dollar', 'semicolon', 'komma',
'star', 'colon', or 'semicolon' as that special character.

---------------

if you find bugs let me (isenburg@cs.unc.edu) know.
