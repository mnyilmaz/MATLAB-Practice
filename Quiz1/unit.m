function [x,n] = unit(n0,n1,n2)
  n = n1:n2;
  x = [(n+n0) >= 0];
  x = double(x);
  end
