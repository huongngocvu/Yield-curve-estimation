# Yield-curve-estimation


Data: Data of zero-coupon yields are stored in ZERO_YIELDS_3M6M.xlsx (Source: Refinitiv)

To collect data, sign in your Refinitiv Eikon account, download New Zealand zero-coupon yields with maturities of 3-month, 6-month, 1-year, 2-year up to 10-year. Time range is from 3/1/2012 - 31/12/2021.

The RIC codes of these yields are: NZGOV3MZ=R, NZGOV6MZ=R, NZGOV1YZ=R, NZGOV2YZ=R, NZGOV3YZ=R, NZGOV4YZ=R, NZGOV5YZ=R, NZGOV6YZ=R, NZGOV7YZ=R, NZGOV8YZ=R, NZGOV9YZ=R, NZGOV10YZ=R

The raw data cannot be uploaded because the copyright belongs to Refinitiv.


To create Figure 5: Run factor_estimation_Github.m

The estimated factors are stored in estimated_factors.mat

The codes in DieboldLiEstimation.m are based on Nyholm, K. (2020). A Practitioner's Guide to Discrete-time Yield Curve Modelling: With Empirical Illustrations and MATLAB Examples. Cambridge University Press.
