using DTWA
using JLD2


function main(params)

    outfile = "results.jld2"

    jldsave(outfile; collective_spin =params)
end

main(params)