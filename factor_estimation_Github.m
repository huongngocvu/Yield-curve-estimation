% Estimation of New Zealand yield curves

clear; clc; close all;

% Using 1-year to 10-year zero yields + 3-month yields + 6-month yields (3/1/2012 - 31/12/2021)
dataset = readtable('ZERO_YIELDS_3M6M.xlsx','Sheet',1);
dataset = flipud(dataset);
dataset = rmmissing(dataset);

dataset.Time = datenum(dataset.Time);
dataset.Time = datetime(dataset.Time,'Format','dd-MM-yyyy','convertFrom','datenum');

% Time for plotting
dates = dataset.Time;

% Create a matrix data
data_dates = datevec(dataset.Time);
data_dates = data_dates(1:end,1:3); 

dataset.Time = [];
data_mat = table2array(dataset);

data = [data_dates, data_mat];

% Maturities: 3 months, 6 months, 1 year to 10 years
maturities=[3, 6, 12:12:120]'; 

% Diebold_Li estimation
Yield = data(:,4:end);
TimeV = data(:,1:3);

lambda = 0.0609;     % Explicitly set lambda = 0.0609 (Diebold and Li 2006)

[beta, phi_hat, k_hat, b_hat, yield_hat] = DieboldLiEstimation(Yield, maturities, lambda);

% Plot the three estimated factors
plot(dates, beta(:,1));
hold on;
plot(dates, beta(:,2));
plot(dates, beta(:,3));
hold off;
datetick('x','mmm-yy');
legend('Level factor','Slope factor','Curvature factor');
xlabel('Time'); ylabel('Factors');
set(gca,'fontsize',12);

