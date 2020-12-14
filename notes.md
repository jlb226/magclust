# Implementing superparamagnetic clustering algorithm via Python and R packages 

** http://www.vyssotski.ch/BasicsOfInstrumentation/SpikeSorting/Blatt1996(SuperParamagneticClusteringOfData).pdf

# Pseudo-code

1. Definitions

- Retrieve a dataset X with N points each of dimension d where x_i represents a single point
- Initialize each point to a cluster s={1..q}
2. Cost Function
- Define the cost function H[s] = -sum_i(sum_j(J(x_i, x_j) * delta(s_i, s_j)))
3. Specifics to the Cost
- J(x_i, x_j) = (1/K) * exp{norm2(x_i - x_i)/2a^2}
- Use this for the nearest neighbor calculation: https://scikit-learn.org/stable/modules/neighbors.html
- Once had calculate the average and the number of points used K is arbitrary.
- The interaction strength between a pair of nearest neighbors x_i and x_j
- a is the average nearest-neighbors distance
- K is the average number of neighbors
- delta()= ????
5. Simulate interactions formed with varying temperature
- Let N_i be the number of points assigned to cluster i
- Let N_max = max{N_1, ... N_q} be the maximum number of assignments accross all clusters
- Define susceptibility chi = (N/T)*((m^2) - (m)^2) where m = (((N_max/N)/q) - 1)/(q - 1) //N is the total number of points
- use susceptibility chi to locate temperature ranges in which the system is in superparamagnetic phase
- susceptibility v. tempature plot to locate peaks. As temperature is raised the pseudotransition go from (T_fs) ferromagnetic to (T_clus) superparamagnetic. At peaks susceptibility chi is nearly constant. Then as temperature increases the superparamagnetic transitions to (T_ps) paramagnetic, susceptibility chi diminishes rapdily the size of the volume of the largest cluster. 
- Thus the temperatures where a maximum of the susceptibility occurs and the temperature at which x decreases abruptly can serve as lower and upper bounds,
respectively, for the superparamagnetic phase. A surprisingly good initial guess for T_ps = (exp{-(1/2)}/4)*ln(1 + sqrt(q)).
- So monte carlo untill you find the rising peak and falling peak
6. Reference section (D) of the paper [1] for the details on the clustering procedure to determing chi, J, delta, and T.

Understand everything up to delta, not sure how it is defined, what it returns, and what its overall purpose is in the cost.


