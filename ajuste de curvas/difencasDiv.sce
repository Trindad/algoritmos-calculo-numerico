function dd=newtondd(x,y)
  disp("")
  disp ("Output for the divided diferences")
  disp("")
  for i=1:length(x)
    dd(i,1)=y(i);
  endfor
  for i=2:length(x)
    for j=2:i
      dd(i,j)=(dd(i,j-1)-dd(i-1,j-1))/(x(i)-x(i-j+1));
    endfor
  endfor
  dd=[x' dd];
  
endfunction