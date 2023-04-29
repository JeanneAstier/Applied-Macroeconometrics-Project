% This code allows to run successively all the simulations and estimations 
% for the project. It calls several mod files, one after the other. 
% Please be aware of significant computing time: each estimation
% takes between 10 and 20 minutes - hence total computation takes a couple
% of hours. 
% The results are exported in the "RESULTS" folder.

addpath C:\dynare\5.3\matlab

%% 1 - RUN SIMULATIONS %%

%% simulation 1: productivity shock
dynare Smets_Wouters_simul1 nograph nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_params.txt')
% export posteriors 
writestruct(load('SW_simul1.mat').oo_.posterior_mean.parameters, 'RESULTS/SW_simul1_post_mean.xml')
writestruct(load('SW_simul1.mat').oo_.posterior_variance.parameters, 'RESULTS/SW_simul1_post_var.xml')

%% simulation 2: investment-specific technology shock
dynare Smets_Wouters_simul2 nograph nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_params.txt')
% export posteriors 
writestruct(load('SW_simul2.mat').oo_.posterior_mean.parameters, 'RESULTS/SW_simul2_post_mean.xml')
writestruct(load('SW_simul2.mat').oo_.posterior_variance.parameters, 'RESULTS/SW_simul2_post_var.xml')

%% simulation 3: wage mark-up shock
dynare Smets_Wouters_simul3 nograph nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_params.txt')
% export posteriors 
writestruct(load('SW_simul3.mat').oo_.posterior_mean.parameters, 'RESULTS/SW_simul3_post_mean.xml')
writestruct(load('SW_simul3.mat').oo_.posterior_variance.parameters, 'RESULTS/SW_simul3_post_var.xml')



%% 2 - RUN COUNTERFACTUALS ON EACH SIMULATED DATASET %%


%% A. SIMULATED DATASET 1 

%% simulation 1-1: fixed alpha below
dynare Smets_Wouters_simul1_scenario1 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario1_params.txt')

%% simulation 1-2: fixed alpha above
dynare Smets_Wouters_simul1_scenario2 nointeractive
% export parameters values 
 writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario2_params.txt')

%% simulation 1-3: fixed Phi_p below
dynare Smets_Wouters_simul1_scenario3 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario3_params.txt')

%% simulation 1-4: fixed Phi_p above
dynare Smets_Wouters_simul1_scenario4 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario4_params.txt')

%% simulation 1-5: fixed rho_a below
dynare Smets_Wouters_simul1_scenario5 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario5_params.txt')


%% B. SIMULATED DATASET 2

%% simulation 2-1: fixed alpha below
dynare Smets_Wouters_simul2_scenario1 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario1_params.txt')

%% simulation 2-2: fixed alpha above
dynare Smets_Wouters_simul2_scenario2 nointeractive
% export parameters values 
 writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario2_params.txt')

%% simulation 2-3: fixed Phi_p below
dynare Smets_Wouters_simul2_scenario3 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario3_params.txt')

%% simulation 2-4: fixed Phi_p above
dynare Smets_Wouters_simul2_scenario4 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario4_params.txt')

%% simulation 2-5: fixed rho_a below
dynare Smets_Wouters_simul2_scenario5 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario5_params.txt')


%% C. SIMULATED DATASET 3 

%% simulation 3-1: fixed alpha below
dynare Smets_Wouters_simul3_scenario1 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_scenario1_params.txt')

%% simulation 3-2: fixed alpha above
dynare Smets_Wouters_simul3_scenario2 nointeractive
% export parameters values 
 writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_scenario2_params.txt')

%% simulation 3-3: fixed Phi_p below
dynare Smets_Wouters_simul3_scenario3 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_scenario3_params.txt')

%% simulation 3-4: fixed Phi_p above
dynare Smets_Wouters_simul3_scenario4 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_scenario4_params.txt')

%% simulation 3-5: fixed rho_a below
dynare Smets_Wouters_simul3_scenario5 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul3_scenario5_params.txt')
