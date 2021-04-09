Arch and Project Layout is a modification of RxVMS coined by 
Thomas Burkart at
https://www.burkharts.net/apps/blog/rxvms-a-practical-architecture-for-flutter-apps/
and its based on his 20 years exp in softwre and hisrecent 4 yearsmobile dev with Xamarin Forms.

I modified his idea to include getX specific stuff and yet i still call my getX controllers 
managers as it makes more sense to do it that way.


Migration to RxVMS guide
1. Project layout first
2. Separate main.dart into
      app mouleand homepage module and plain main.dart
3 add inshared components
4 translate app and homepagemdouels to use both getx and flutter platform widgets
5 modiy testing to use getx and flutter platform widgets setups