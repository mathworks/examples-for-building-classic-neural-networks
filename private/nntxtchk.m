function nntxtchk
%NNTXTCHK Neural Network Design utility function.

% Refresh screen when appropriate to get around PC text color bug.

% Copyright 1994-2002 PWS Publishing Company and The MathWorks, Inc.

c = computer;
if strcmp(c(1:2),'PC')
  set(gcf,'Position',get(gcf,'Position'));
end
