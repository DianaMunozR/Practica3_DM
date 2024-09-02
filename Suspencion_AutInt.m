[t,x] = ode45(@Suspencion_Aut,[0 10], [0 0 0 0]);
% Gráfico para x1
subplot(2,1,1);
plot(t, x(:,1), 'r'); 
grid on
title("Masa 1 (x1)");
xlabel("Tiempo (s)");
ylabel("Desplazamiento (m)");

% Gráfico para x2
subplot(2,1,2);
plot(t, x(:,2), 'm');
grid on
title("Masa 2 (x2)");
xlabel("Tiempo (s)");
ylabel("Desplazamiento (m)");