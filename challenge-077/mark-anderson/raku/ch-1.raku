unit sub MAIN(UInt $N);

my @fib = (1, 2, * + * ... $N <= * + *);

my @results = gather {
    for 2..@fib -> $n {
        take $_ for @fib.combinations($n).grep(*.sum == $N); 
    }
}

say "$_.join(" + ") = $N" for @results;
