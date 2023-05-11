function nnd(cmd)
% NND Neural Network Design Textbook Demos.

% Copyright 1994-2010 Martin T. Hagan and Howard B. Demuth. Used by Permission.
% First Version, 8-31-95.

% BRING UP FIGURE IF IT EXISTS

me = 'nnd';
fig = nndfgflg(me);
if ~isempty(fig) && ~isempty(get(fig,'children')), fig = []; end
if nargin == 0, cmd = ''; end

% CREATE FIGURE ========================================================

if strcmp(cmd,'') && ~isempty(fig)
  figure(fig)

elseif strcmp(cmd,'') && isempty(fig)

  % START WITH STANDARD TITLE FIGURE

  fig = nntitlef(me,'DESIGN','','','','');

  t = text(80,62,'by Martin T. Hagan, Howard B. Demuth, Mark H. Beale');
  set(t,'fontweight','bold')
  t = text(80,46,'Ordering information http://hagan.okstate.edu/nnd.html');
  set(t,'fontweight','bold')

  % UNLOCK
  set(fig,'nextplot','add')

  % ICONS
  nndicon(2,130,230,'shadow')
  nndicon(3,170,130,'shadow')
  nndicon(4,210,230,'shadow')
  nndicon(7,250,130,'shadow')
  nndicon(10,290,230,'shadow')
  nndicon(11,330,130,'shadow')
  nndicon(14,370,230,'shadow')
  
  % BUTTONS
  drawnow % Let everything else appear before buttons
  set(nnsfo('b7','Table of Contents'), ...
    'callback','nndtoc',...
    'pos',[80 10 130 20])
  set(nnsfo('b10','Close'),...
    'pos',[360 10 60 20]);
  
  % LOCK FIGURE AND RETURN
  set(fig,'nextplot','new')

  nnchkfs;
end


