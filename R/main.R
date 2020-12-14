###  main.R  ###

# s:        "Sites (clusters)"
# a:    	"Local Length Scale"
# beta:		"Inverse of temperature"
# chi:  	"Susceptibility | chi = (N/T)*((m^2) - (m)^2)"
# delta_E:	"Change in energy"
# E:		"Energy"
# J:    	"Nearest-Neighbor Interactions | J(x_i, x_j) = (1/K) * exp{norm2(x_i - x_i)/2a^2}"
# H:        "Hamiltonian (Cost) | H[s] = -sum_i(sum_j(J(x_i, x_j) * delta(s_i, s_j)))"
# K:    	"Average number of neighbors per site (point)"
# m:    	"Magnetization | m = (((N_max/N)/q) - 1)/(q - 1) where N_max = max{N_1, ..., N_q} is the largest inter-cluster cardinality"
# mu:   	"Spin Value"
# N:    	"Number of points"
# P:		"Probability of bond between neighboring spins"
# q:    	"Number of states (or classes or clusters)"
# T:		"Temperature"
# T_fs:     "Superparamagnetic state caused by pseudotransition from ferromagnetic state (initial peak)"
# T_ps:     "Paramagnetic state caused by pseudotransition from superparamagnetic state (final valley) | T_ps = (exp{-(1/2)}/4)*ln(1 + sqrt(q))"
# T_clus:   "Superparamagnetic temperature at which clusters form | T_clus = ((T_fs + T_ps)/2)"


