using RegexTools
using Test

@testset "RegexTools.jl" begin
    
    @testset "hex_escape" begin
        for char in Char.(0:126)
            rawstr = string(char)
            regstr = RegexTools.hex_escape(rawstr)
            
            reg = Regex(regstr)
            m = match(reg, rawstr)
            @test !isnothing(m)
        end
    end

end
