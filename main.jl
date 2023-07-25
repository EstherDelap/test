using DTWA
using JLD2

function main()

    outfile = "results.jld2"

    jldsave(outfile; collective_spin =$paramfil )
end

main()