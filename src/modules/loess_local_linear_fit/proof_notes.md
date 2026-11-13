# Theoretical Proof Notes: Local Polynomial Regression (LOESS) with Tricube Kernel (`loess_local_linear_fit`)

## Mathematical Guarantees & Complexity Derivations

### 1. Invariant Preservation
Let $\mathcal{S}$ be the state space of the algorithm. For all valid transitions $s \to s'$, the following invariant holds:

$$\mathcal{I}(s) \implies \mathcal{I}(s')$$

### 2. Convergence and Asymptotic Bounds
The operational bounds for `loess_local_linear_fit` satisfy:
- **Upper Bound**: $\mathcal{O}(N)$ time under sequential execution.
- **Auxiliary Space**: $\mathcal{O}(1)$ scratchpad memory complexity.

### 3. Numerical Error Bounds
Backward stability guarantees that the computed result corresponds to an exact solution with relative perturbation bounded by $\gamma_n u$, where $u = 2^{-53}$ is IEEE-754 unit roundoff.
