classdef nndArray
  
  properties
    values = {};
  end
  
  methods
    function x = nndArray(v)
      for i=length(v):-1:1
        vi = v{i};
        if numel(vi) ~= 1
          vi = num2cell(vi);
          v = [v(1:(i-1)) vi v((i+1):end)];
        end
      end
      x.values = v;
    end
    
    function y = subsref(x,subscripts)
      subs = subscripts(1).subs;
      y = x.values(subs{1});
      if numel(y) == 1
        y = y{1};
      else
        y = [y{:}];
      end
    end
    
    function x = append(x,varargin)
      x.values = [x.values varargin];
    end
    
    function len = length(x)
      len = length(x.values);
    end
  end
end