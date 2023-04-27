# Projet de Macroéconométre Appliquée: Effet de la calibration partielle sur l’estimation d’un DSGE

Consigne: en utilisant un modèle déjà estimé de taille moyenne (e.g. Smets et Wouters), simulez plusieurs jeux de données de taille réaliste. Sur ces données simulées, re-estimez le modèle en modifiant ou non la valeur de certains paramètres initialement calibrés. Vous montrerez ainsi l’impact d’une erreur de calibration sur l’estimation des autres paramètres. Vous discuterez le choix des paramètres que vous modifiez et analyserez les paramètres impactés au regard des mécanismes économiques les reliant au sein du modèle.


## Projet

On choisit de se concentrer sur les paramètres en lien avec la fonction de production. 

D'après Smets & Wouters (2007), la fonction de production aggrégée est: 

$$ y_t = \Phi_p \left( \alpha k_t^s + (1 - \alpha) l_t + \epsilon_t^a \right) $$ 

avec $\epsilon_t^a$ la productivité totale des facteurs de productions, suivant un AR(1): 

$$ \epsilon_t^a = \rho_a \epsilon_{t-1}^a + \eta_t^a $$

Les paramètres calibrés liés à la fonction de productions sont donc : 
- $\Phi_p$ = 1 + part de coûts fixes dans la production (`cfc' dans le code)
- $\alpha$ la part de capital dans la production (`calfa' dans le code)
- $\rho_a$ la persistance de la TFP (`crhoa' dans le code)

Ce sont donc ces paramètres dont il faut essayer de changer la valeur (i.e. de fixer une certaine valeur au lieu de les calibrer ?), et voir l'effet que cela a sur les autres paramètres estimés. 


## Plan


### 1. Simuler des jeux de données

On part du modèle SW de base, estimé sur US data. On réalise trois stoch_simul(periods = 200), pour trois chocs différents: ea, eb, ew. On sauvegarde les données issues des ces trois simulations en trois jeux de données différents. 


### 2. Faire tourner des contrefactuels 

Pour chacun des jeux de données simulés : 
On fait tourner des modèles SW alternatifs sur ces données ( code : estimation(datafile = XXX=) ), en changeant les valeurs d'un des trois paramètres considérés (+/- 50% => 5 scénarios). Pour la variable fixée, on change juste sa valeur de départ et on comment out la calibration ; pour les variables calibrées, on fixe en prior le posterior obtenu avec le modèle SW de base (moyenne et std). On compare ensuite les paramètres calibrés et les valeurs des variables endogènes à l'état stationnaire, à ce qu'on avait obtenu pour le modèle SW de base. 

