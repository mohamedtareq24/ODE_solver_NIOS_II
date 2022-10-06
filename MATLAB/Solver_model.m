clear
delta = 2**-9;
initial_condition_v = 0 ;
initial_condition_x = 1 ;
k = 2**-4;
m = 1;
B = 2**-3;

dy(1) = initial_condition_v;
y(1) =  initial_condition_x;

#time = (0:delta:2**7-delta); 
mem_size = 2**17;
    for i = 1:mem_size-1  %% memory size 
        ddy(i) = -1 * (k/m) * y(i)  - (B/m) * dy(i)  ;
        #ddy(i) =  -1 * y(i)   ;
        dy(i+1) = delta * ddy(i)  + dy(i);  %  y`  this is an intgrator meth % multiplcation wil be Arithmatic Right Shift %   bitsra(a,3)
        y(i+1)  = delta * dy(i+1) + y(i) ; % y   % multiplcation wil be Arithmatic Right Shift %%      
    end
y_shift = y .+ 1;    
subplot (3,1,2);
plot (dy);
xlabel ('time (sample time)');
ylabel ('velocity (m/sample time)');
grid ;
subplot (3,1,1);
plot (y);
xlabel ('time (sample time)');
ylabel ('displacemnt (m)');
grid ;
subplot (3,1,3);
plot (y_shift);
xlabel ('time (sample time)');
ylabel ('displacemnt (m)');
grid ;
#end
