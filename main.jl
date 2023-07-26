using DTWA
using JLD2



#p1,p2,p3,p4 = split(read(ARGS[1], String), r"\s+")

function main(p1, p2, p3)

    outfile = "results.jld2"

    jldsave(outfile; collective_spin =[p1,p2,p3], type = typeof(p1))
end

main(parse(Int64,ARGS[1]),parse(Int64,ARGS[2]),parse(Int64,ARGS[3]))