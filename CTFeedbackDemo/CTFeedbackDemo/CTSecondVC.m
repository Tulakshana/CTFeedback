//
//  CTSecondVC.m
//  CTFeedbackDemo
//
//  Created by Riverview Labs on 19/3/15.
//  Copyright (c) 2015 CAPH. All rights reserved.
//

#import "CTSecondVC.h"

#import "CTFeedbackViewController.h"

@interface CTSecondVC ()<CTFeedbackViewControllerDelegate>

@end

@implementation CTSecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CTFeedbackViewController *feedbackViewController = [CTFeedbackViewController controllerWithTopics:[NSArray arrayWithObjects:@"Service Quality",@"Menu Quality",@"Store Facilities",@"Pricing of Products",@"Range of Products",@"Report a Problem",@"Other Issues", nil] localizedTopics:[NSArray arrayWithObjects:NSLocalizedString(@"Service Quality", nil),NSLocalizedString(@"Menu Quality", nil),NSLocalizedString(@"Store Facilities", nil),NSLocalizedString(@"Pricing of Products", nil),NSLocalizedString(@"Range of Products", nil),NSLocalizedString(@"Report a Problem", nil),NSLocalizedString(@"Other Issues", nil), nil]];
    feedbackViewController.toRecipients = @[@"ctfeedback@example.com"];
    feedbackViewController.title = @"";
    feedbackViewController.delegate = self;
    feedbackViewController.view.frame = CGRectMake(10, 0, [[UIScreen mainScreen] bounds].size.width - 20, [[UIScreen mainScreen] bounds].size.height);

    [self addChildViewController:feedbackViewController];
    [self.view addSubview:feedbackViewController.view];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - CTFeedbackViewControllerDelegate

- (UIColor *)feedbackViewControllerCellTextColor:(CTFeedbackViewController *)controller{
    return [UIColor darkGrayColor];
}

- (UIColor *)feedbackViewControllerSubmitButtonColor:(CTFeedbackViewController *)controller{
    return [UIColor darkGrayColor];
}
- (UIColor *)feedbackViewControllerSubmitButtonTextColor:(CTFeedbackViewController *)controller{
    return [UIColor whiteColor];
}

- (UIColor *)feedbackViewControllerCellColor:(CTFeedbackViewController *)controller{
    return [UIColor lightGrayColor];
}
@end
