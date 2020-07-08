"""
Computes the cronbach's α
"""
function cronalpha(items)
    items = Matrix(items)
    vcmat = cov(items) # Variance-Covariance Matrix
    k = size(items, 2) # no of items
    σ2_Xi = tr(vcmat) # individual-item variances
    σ2_X = sum(vcmat) # total-variance

    α = (k/(k-1)) * (1-σ2_Xi/σ2_X)
end
