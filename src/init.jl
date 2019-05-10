DIR = @__DIR__

if DIR != nothing
    println("came to if")
    const LIBRDKAFKA = DIR * "/deps" * "/librdkafka.so"
else
    println("came to else")
    const LIBRDKAFKA = Pkg.dir("RDKafka", "deps", "librdkafka.so")
    const LIBRDKAFKA = DIR * "deps/librdkafka.so"
end
