
volatility = abs(returns);

threshold = 1;

large_volatility = volatility;
large_volatility(large_volatility<threshold) = [];

small_volatility = volatility;
small_volatility(small_volatility>threshold) = [];

volatility_acf = autocorr(volatility, length(volatility)-1);
volatility_small_acf = autocorr(small_volatility, length(small_volatility)-1);
volatility_large_acf = autocorr(large_volatility, length(large_volatility)-1);

f=figure;
loglog(volatility_acf,'DisplayName','full-series');
hold on;
loglog(volatility_small_acf,'DisplayName','below threshold');
loglog(volatility_large_acf,'DisplayName','above threshold');
title(['prog=',num2str(threshold)]);
hold off;
legend show;
ax = gca;
set_default_plot_properties(ax);