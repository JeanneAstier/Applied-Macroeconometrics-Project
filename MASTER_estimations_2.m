addpath C:\dynare\5.3\matlab

%% B. SIMULATED DATASET 2 %%

%% simulation 2-1: fixed alpha below
dynare Smets_Wouters_simul2_scenario1 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario1_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul2_scenario1_ss.txt')

%% simulation 2-2: fixed alpha above
dynare Smets_Wouters_simul2_scenario2 nointeractive
% export parameters values 
 writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario2_params.txt')
%% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul2_scenario2_ss.txt')

%% simulation 2-3: fixed Phi_p below
dynare Smets_Wouters_simul2_scenario3 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario3_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul2_scenario3_ss.txt')

%% simulation 2-4: fixed Phi_p above
dynare Smets_Wouters_simul2_scenario4 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario4_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul2_scenario4_ss.txt')

%% simulation 2-5: fixed rho_a below
dynare Smets_Wouters_simul2_scenario5 nointeractive
% export parameters values 
writetable(table(M_.param_names, M_.params), 'RESULTS/SW_simul2_scenario5_params.txt')
% export steady state values
writetable(table(M_.endo_names, oo_.steady_state), 'RESULTS/SW_simul2_scenario5_ss.txt')