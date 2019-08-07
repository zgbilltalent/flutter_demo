//
//  ViewController.m
//  Flutter_Test
//
//  Created by Bill on 2019/8/6.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Jump to flutterViewController" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    button.frame = CGRectMake(80.0, 210.0, 300.0, 40.0);
    button.center = self.view.center;
    [self.view addSubview:button];
}

- (void)handleButtonAction {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    FlutterEngine *flutterEngine = delegate.flutterEngine;
    
    FlutterViewController *flutterVC = [[FlutterViewController alloc]initWithEngine:flutterEngine nibName:nil bundle:nil];
    [self presentViewController:flutterVC animated:YES completion:nil];
}
@end
