## Copyright (C) 2017 Robert W. Ellenberg
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Author: Robert W. Ellenberg <robert@robert-Satellite-P740>
## Created: 2017-06-12

# Create a rotation matrix from modified denavit hartenberg angles alpha and theta.
function R = dhrotation(alpha_n, theta)
R=[cos(theta),               -sin(theta), 0;
   sin(theta) * cos(alpha_n), cos(theta)*cos(alpha_n), -sin(alpha_n);
   sin(theta) * sin(alpha_n), cos(theta) * sin(alpha_n), cos(alpha_n)];

endfunction
