//
//  CalledBySwiftViewController.m
//  CrossLangProblemDemo
//
//  Created by pc1321 on 2021/7/9.
//

#import "CalledBySwiftViewController.h"
#import "CrossLangProblemDemo-Swift.h"

@interface CalledBySwiftViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pushNextButton;
@end

@implementation CalledBySwiftViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [_pushNextButton addTarget:self action:@selector(pushNextButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushNextButtonTapped: (UIButton *) sender {
    [self.coordinator secondViewController];
}

@end
