clear
delta = 2**-9;
initial_condition_v = 0 ;
initial_condition_x = 1 ;
k = 0.7;
m = 1;
B = 0.1;

dy(1) = initial_condition_v;
y(1) =  initial_condition_x;

time = (0:delta:2**9-delta); 
mem_size = 2**18;
    for i = 1:mem_size-1  %% memory size 
        ddy(i) = -1 * (k/m) * y(i) - (B/m) * dy(i);
        dy(i+1) = delta * ddy(i)+ dy(i); %  y`  this is an intgrator meth % multiplcation wil be Arithmatic Right Shift %   bitsra(a,3)
        y(i+1)  = delta * dy(i+1) + y(i); % y   % multiplcation wil be Arithmatic Right Shift %%      
    end
subplot (2,1,1);
plot (time,dy);
xlabel ('time (sample time)');
ylabel ('velocity (m/sample time)');
grid ;
subplot (2,1,2);
plot (time,y);
xlabel ('time (sample time)');
ylabel ('displacemnt (m)');
grid ;
#end
