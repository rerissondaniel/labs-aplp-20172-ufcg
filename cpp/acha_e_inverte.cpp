#include <bits/stdc++.h>

using namespace std;

main(){
	int n;
	string key, pal;
	cin >> key;
	scanf("%d", &n);
	for(int i = 0; i < n; i++){
		cin>>pal;
		if(pal == key){
			reverse(pal.begin(), pal.end());
			cout<<pal<<endl;
		}else cout<<pal<<endl;
	}
}
