# Projet de Macroéconométre Appliquée: Effet de la calibration partielle sur l’estimation d’un DSGE

Consigne: en utilisant un modèle déjà estimé de taille moyenne (e.g. Smets et Wouters), simulez plusieurs jeux de données de taille réaliste. Sur ces données simulées, re-estimez le modèle en modifiant ou non la valeur de certains paramètres initialement calibrés. Vous montrerez ainsi l’impact d’une erreur de calibration sur l’estimation des autres paramètres. Vous discuterez le choix des paramètres que vous modifiez et analyserez les paramètres impactés au regard des mécanismes économiques les reliant au sein du modèle.


## Premières pistes

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

Je crois que les lignes de code régissant l'estimation des ces trois paramètres sont respectivement les lignes 464, 474 et 446. 

De ce que je comprends:
- il faut commencer par "simuler plusieurs jeux de données", c'est-à-dire lancer plusieurs fois le code en modifant certains paramètres peut-être ? peut-être certains chocs ? ça je ne comprends pas trop. 
- pour chaque jeu de données, on peut comparer le "prior" (i.e. la distribution des paramètres avant calibration) avec le "posterior" (i.e. la distribution des paramètres après calibration) pour chaque paramètre, sur les graphiques 18 à 20 en particulier
- puis pour chaque "jeu de données" (i.e. pour chaque modalité du code ?), il faut passer un paramètre calibré en paramètre variable fixé, relancer le code et voir l'effet sur les autres paramètres - c'est-à-dire comparer le posterior ainsi obtenu avec le posterior de référence ? 
