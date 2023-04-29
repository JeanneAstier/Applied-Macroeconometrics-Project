addpath C:\dynare\5.3\matlab

%% 2 - RUN COUNTERFACTUALS ON EACH SIMULATED DATASET %%


%% A. SIMULATED DATASET 1 %%

%% simulation 1-1: fixed alpha below
dynare Smets_Wouters_simul1_scenario1 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario1_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul1_scenario1_ss.txt')

%% simulation 1-2: fixed alpha above
dynare Smets_Wouters_simul1_scenario2 nointeractive
% export parameters values 
 writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario2_params.txt')
%% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul1_scenario2_ss.txt')

%% simulation 1-3: fixed Phi_p below
dynare Smets_Wouters_simul1_scenario3 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario3_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul1_scenario3_ss.txt')

%% simulation 1-4: fixed Phi_p above
dynare Smets_Wouters_simul1_scenario4 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario4_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul1_scenario4_ss.txt')

%% simulation 1-5: fixed rho_a below
dynare Smets_Wouters_simul1_scenario5 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul1_scenario5_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul1_scenario5_ss.txt')