function [new_index, error_max] = adaptive_selection(omega_LR_index, uz1, uz0, nStep)

%% Get errors
error = abs(uz1-uz0)./abs(uz1);
error(omega_LR_index) = 0;
[error_n,new_index] = maxk(error,nStep);
error_max = error_n(1);

