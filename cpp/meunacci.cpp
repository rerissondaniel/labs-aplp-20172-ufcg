#include <bits/stdc++.h>

using namespace std;

long fib(long n){
	long fibs[100];
	fibs[0] = 0;
	fibs[1] = 1;
	fibs[2] = 1;
	for(int i = 2; i <= n; i++){
		fibs[i] = fibs[i - 1] + fibs[i - 2];	
	}
	return fibs[n];
}

main(){
	long n_fib;
	scanf("%ld", &n_fib);
	long ans = fib(n_fib) % 10 + fib(n_fib + 1) % 10 + fib(n_fib + 2) % 10;
	cout<<ans<<endl;
}
