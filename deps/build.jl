@unix_only begin

	download("http://www.pomdp.org/code/pomdp-solve-5.4.tar.gz", "pomdp-solve-5.4.tar.gz")
	println("UNZIPPING"); tic(); run(`tar xvzf pomdp-solve-5.4.tar.gz`); toc()
	rm("pomdp-solve-5.4.tar.gz")
	
	cd("pomdp-solve-5.4")

	println("CONFIGURE");    tic(); run(`./configure`); toc()
	println("MAKE");         tic(); run(`make`); toc()

	cd(Pkg.dir("POMDPSolve", "deps"))
end
