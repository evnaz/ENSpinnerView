//
//  ViewController.m
//  ENSpinnerView
//
//  Created by Evgeny on 22.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import "ViewController.h"
#import "ENSpinnerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ENSpinnerView *spinner = [ENSpinnerView spinner];
    spinner.center = self.view.center;
    [self.view addSubview:spinner];
    [spinner startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
