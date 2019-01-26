# Notation

| Notation | Meaning |
| -------- | ------- |
|          |         |
|          |         |
|          |         |
|          |         |
|          |         |
|          |         |
|          |         |
|          |         |
|          |         |

# The Container Loading Model

 In this model we focus on how can we load the container with cargos as much as possible. For this container loading problem (CLP),  we specify roles as follow:

- The bigger the cargo is (appraised by volume), the higher priority it has to be put in the container.
- If the number of each type of drones and the minimun number of each type of medical package is known, load medical package as much as possible after loading all the drones.
- Cargos are all cube. When cargo is loaded in the container, it can be six states shown in Table.

| State No.       | 1    | 2    | 3    | 4    | 5    | 6    |
| --------------- | ---- | ---- | ---- | ---- | ---- | ---- |
| Parallel to $L$ | $l$  | $w$  | $h$  | $l$  | $w$  | $h$  |
| Parallel to $W$ | $w$  | $l$  | $l$  | $h$  | $h$  | $w$  |
| Parallel to $H$ | $h$  | $h$  | $w$  | $w$  | $l$  | $l$  |

## Problem Description

The length, width and height of the container is equal to $L$, $W$ and $H$. We have 11 types of cargos, their size is shown in Table.

//table

If $N$ is the maximun total number of the cargos, the problem is therefore formulated as the following linear mixed integer programming model:
$$
\max \sum_{i=1}^Nl_iw_ih_i/LWH
$$


subject to the volume constrain
$$
\sum_{i=1}^{N}l_iw_ih_i \le LWH
$$
where $l_i$, $w_i$ , $h_i$ is the parameters indicating the length, width and height of cargo $i$.

