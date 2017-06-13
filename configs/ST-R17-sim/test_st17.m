% Define the sequence of "alpha" angles in the DH parameters
alpha = [0,0,90,0,0,-90] * pi / 180;

% Note: this computes only rotation, so displacements d and a are ignores

% Define the sequemnce of joint angles for the current pose (set joints to these angles in linuxcnc)
q=[45,0,45,-90,90,0] * pi / 180;


% Apply the transformations in reverse order to go from local orientation at end effector to global orientation
R=eye(3);
for k=6:-1:1
  R = dhrotation(alpha(k),q(k)) * R;
end

% Round down to make almost-zero values actually zero (for readability only)
round(R*10000)/10000

% Define desired ABC angles in world coordinates
A = 0;
B = -pi/4;
C = pi/4;

% Finally, compute what the rotation matrix should be given these angles
R_rpy=rotate_rpy(A, B, C)

