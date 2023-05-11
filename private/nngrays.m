function c = nngrays
%NNGRAYS Grays used by shallow neural network demos
  
%  NNGRAYS returns a matrix of rgb triples for 46 grays.

% Mark Beale 6-4-94
% Copyright 1994-2018 PWS Publishing Company and The MathWorks, Inc.

c = [0.9:-0.01:0.4]'*[1 0.97 0.97];
