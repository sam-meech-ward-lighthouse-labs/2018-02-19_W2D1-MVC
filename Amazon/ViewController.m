//
//  ViewController.m
//  Amazon
//
//  Created by Sam Meech-Ward on 2018-02-19.
//  Copyright © 2018 lighthouse-labs. All rights reserved.
//

#import "ViewController.h"
#import "Canopy.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *canopyButton;
@property (weak, nonatomic) IBOutlet UIButton *canopyButton2;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
  self = [super initWithCoder:coder];
  if (self) {
    // if initialized from a storyboard, this initializer will be called.
    _canopyButton;
  }
  return self;
}

//- (void)setCanopyButton:(UIButton *)canopyButton {
//  // custom logic that sets up some other things.
//  _canopyButton = canopyButton;
//}

//- (UIButton *)canopyButton {
//  return _canopyButton;
//}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  // We rely on other views that need to be initialized
  // And we want to make sure that stuff only get's setup before a view controller is presented.
  
  self.canopyButton; // getter method
  [self canopyButton];
  _canopyButton; // Ivar
  
  Canopy *canopy = [[Canopy alloc] init];
  canopy.location = @"south";
//  canopy.color = [UIColor colorWithRed:33.0/255.0 green:0.5 blue:190.0/255.0 alpha:1.0];
  canopy.color = [UIColor brownColor];
  
  [self updateCanopyButton:canopy];
}

- (void)updateCanopyButton:(Canopy *)canopy {
  [self.canopyButton setTitle:canopy.location forState:UIControlStateNormal];
  [self.canopyButton setTitleColor:canopy.color forState:UIControlStateNormal];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  NSLog(@"touching iew controller");
}

//- (void)viewWillAppear:(BOOL)animated {
//  [super viewWillAppear:animated];
//}
//
//- (void)viewDidAppear:(BOOL)animated {
//  [super viewDidAppear:animated];
//}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)changeCanopy:(UIButton *)sender {
  Canopy *canopy = [[Canopy alloc] init];
  canopy.location = @"North";
  canopy.color = [UIColor magentaColor];
  
  [self updateCanopyButton:canopy];
}

@end
