function out = nndpause(t,sm)
%NNPAUSE Pause relative to adjustable time multiplier
%
%  NNDPAUSE is used in place of PAUSE and ETIME in the Neural Network
%  Design textbook demos to allow animation times to be made faster or
%  slower.
%
%  NNDPAUSE(T) pauses MATLAB for T seconds.
%
%  NNDPAUSE(M,'setmultiplier') sets an internal time multiplier so that
%  henceforth PAUSE(T) will pause MATLAB for T*M seconds.  This is useful
%  for slowing or speeding up the NN Design textbook demos which use
%  NNDPAUSE to set the pace of various animations.
%
%  NNDPAUSE(1,'setmultiplier') returns NNDPAUSE to its original
%  behavior.
%
%  NNDPAUSE(time2,time1) takes two times, in the format returned by
%  the function CLOCK, and returns their difference in seconds, divided
%  by the current multiplier setting.  This use of NNDPAUSE is equivalent
%  to ETIME when the mulitplier is its default value of 1.

% Copyright 2011 The MathWorks, Inc.

persistent MULTIPLIER;
if isempty(MULTIPLIER)
  mlock;
  MULTIPLIER = 1;
end

% NNDPAUSE(T)
if nargin == 1
  pause(t*MULTIPLIER)
  
% NNDPAUSE(M,'SETMULTIPLIER')
elseif (nargin == 2) && strcmpi(sm,'setmultiplier')
  MULTIPLIER = t;
  
% NNDPAUSE(TIME2,TIME1)
elseif (nargin == 2)
   out = etime(t,sm) / MULTIPLIER;
end
