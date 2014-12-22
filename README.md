ENSpinnerView
=============

Simple spinner view


##Demo
![](http://i.imgur.com/7Oef4Gi.gif)

##How to use
Add ENSpinnerView to your view
```objective-c
ENSpinnerView *spinner = [ENSpinnerView spinner];
spinner.center = self.view.center;
[view addSubview:spinner];
```
Run animation
```objective-c
[spinner startAnimating];
```
Stop anumation and hide spinner
```objective-c
[spinner stopAnimating];
```
Adjust spinner's colors using macro constants in the `ENSpinnerVew.m`
```objective-c
#define SPINNER_COLOR_BASE [UIColor colorWithRed:0.133 green:0.255 blue:0.647 alpha:1]
#define SPINNER_COLOR_SPINNER [UIColor colorWithRed:0.957 green:0.827 blue:0.098 alpha:1];
```
