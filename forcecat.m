function ret = spm_normalise_dir(dim, A, B)

if(dim==1)
  anotherdim = 2
elseif(dim==2)
  anotherdim = 1
end

range=1:size(A,anotherdim); 
indexs=arrayfun( @(x) round(x/size(A,anotherdim)*(size(B,anotherdim)-1) + 1), range);

A
B
if(dim==1)
  BB=B(:, indexs)
elseif(dim==2)
    BB=B(indexs, :)
end


ret = cat(dim, A, BB);

