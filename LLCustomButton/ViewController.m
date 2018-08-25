//
//  ViewController.m
//  LLCustomButton
//
//  Created by Totin on 2018/8/6.
//  Copyright © 2018年 LLTech. All rights reserved.
//

#import "ViewController.h"

#import "LLCustomButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet LLCustomButton *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.testButton.imagePosition = LLButtonImagePositionBottom;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
