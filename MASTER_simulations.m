addpath C:\dynare\5.3\matlab

%% 1 - RUN SIMULATIONS %%

%% simulation 1: productivity shock
dynare Smets_Wouters_simul1 nograph nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul1_ss.txt')
% export posteriors 
writestruct(load('SW_simul1.mat').oo_.posterior_mean.parameters, 'RESULTS/SW_simul1_post_mean.xml')
writestruct(load('SW_simul1.mat').oo_.posterior_variance.parameters, 'RESULTS/SW_simul1_post_var.xml')

%% simulation 2: investment-specific technology shock
dynare Smets_Wouters_simul2 nograph nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul2_ss.txt')
% export posteriors 
writestruct(load('SW_simul2.mat').oo_.posterior_mean.parameters, 'RESULTS/SW_simul2_post_mean.xml')
writestruct(load('SW_simul2.mat').oo_.posterior_variance.parameters, 'RESULTS/SW_simul2_post_var.xml')

%% simulation 3: wage mark-up shock
dynare Smets_Wouters_simul3 nograph nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul3_ss.txt')
% export posteriors 
writestruct(load('SW_simul3.mat').oo_.posterior_mean.parameters, 'RESULTS/SW_simul3_post_mean.xml')
writestruct(load('SW_simul3.mat').oo_.posterior_variance.parameters, 'RESULTS/SW_simul3_post_var.xml')

