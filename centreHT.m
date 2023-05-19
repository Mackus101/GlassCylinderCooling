function [T_node_new] = centreHT(T_node, T_next, rho, c, k, delta_x, delta_t)
% Discrete heat transfer for internal nodes of the glass cylinder
alpha = k / (rho * c);
Fo = alpha * (delta_t * 2 / delta_x^2);
T_node_new = T_node + Fo * (T_next - T_node);
end