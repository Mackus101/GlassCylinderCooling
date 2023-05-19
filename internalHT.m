function [T_node_new] = internalHT(T_node, T_prev, T_next, rho, c, k, delta_x, delta_t)
% Discrete heat transfer for internal nodes of the glass cylinder
alpha = k / (rho * c);
Fo = alpha * (delta_t/ delta_x^2);

T_node_new = Fo * (T_next + T_prev) + (1 - 2 * Fo) * T_node;
end