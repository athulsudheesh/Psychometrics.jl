using RCall
R"""
library("MPsychoR")
data("Rmotivation")
ind <- grep("hyb", colnames(Rmotivation))
HybMotivation <- na.omit(Rmotivation[,ind])
"""
@rget HybMotivation
α = cronalpha(HybMotivation)

@testset "reliabilitytests" begin
    @test round(α,digits=2) == 0.82
end
