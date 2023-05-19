function [T_surf_new] = surfaceHT(T_surf, T_int, T_air, rho, c, k, h, delta_x, delta_t)
% Discrete heat transfer at the surface of the glass cylinder
alpha = k / (rho * c);
Fo = alpha * (delta_t * 2 / delta_x^2);

T_surf_new = T_surf + Fo * (T_int - T_surf) + ((2 * h * delta_t) / (rho * c * delta_x)) * (T_air - T_surf);
end