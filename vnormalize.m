function ret = vnormalize(A)

%% mean %%
m = mean(A,2)
A = A-m*ones(1,size(A,2))

%% max %%
mi = min(A, [], 2)
ma = max(A, [], 2)
ma = max(ma, -mi)
A = A./(ma*ones(1,size(A,2)))

%% scaling %%
A = (A+1)/2.0
ret = double(A)
