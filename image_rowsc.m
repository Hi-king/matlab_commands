function ret = image_rowsc(A)
ret = image(vnormalize(A), 'CDataMapping','scaled');
caxis([0 1.0]);
colormap(jet);
colorbar();
