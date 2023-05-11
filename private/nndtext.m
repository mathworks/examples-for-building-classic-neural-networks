function h=nndtext(t,x,y,a)
%NNDTEXT Neural Network Design utility function.

%  NNDTEXT(T,X,Y)
%    T - Text (string).
%   X - Horizontal coordinate.
%   Y - Vertical coordinate.
%   A - Horizontal alignment (default = 'center').
% Draws text T at location (X,Y) in bold and NNDKBLUE.
% Optionally returns handle to text.

% Copyright 1994-2010 Martin T. Hagan
% First Version, 8-31-95.

%==================================================================

% DEFAULTS
if nargin < 4, a = 'center'; end

% DRAW
H = text(t,x,y,...
  'color',nndkblue',...
  'fontweight','bold',...
  'horiz',a,...
  'CreateFcn','');

% RETURN VALUE
if nargout, h = H; end
