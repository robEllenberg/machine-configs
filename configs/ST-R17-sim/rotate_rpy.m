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
## Created: 2017-06-05
## Creates a rotation matrix equivalent to the roll-pitch-yaw sequence used in genserkins.
## All angles are in radians
function [R] = rotate_rpy (r, p, y)

  sy = sin(y);
  sp = sin(p);
  sr = sin(r);
  cy = cos(y);
  cp = cos(p);
  cr = cos(r);

  % Follows this matrix structure in genserkins:
  %/* |  m.x.x   m.y.x   m.z.x  | */
  %/* |  m.x.y   m.y.y   m.z.y  | */
  %/* |  m.x.z   m.y.z   m.z.z  | */
  
  R=zeros(3);
  R(1,1) = cy * cp;
  R(1,2) = cy * sp * sr - sy * cr;
  R(1,3) = cy * sp * cr + sy * sr;

  R(2,1) = sy * cp;
  R(2,2) = sy * sp * sr + cy * cr;
  R(2,3) = sy * sp * cr - cy * sr;

  R(3,1) = -sp;
  R(3,2) = cp * sr;
  R(3,3) = cp * cr;
endfunction
