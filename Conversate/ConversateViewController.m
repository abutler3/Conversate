//
//  ConversateViewController.m
//  Conversate
//
//  Created by Andrew Butler on 2/17/14.
//  Copyright (c) 2014 Andrew Butler. All rights reserved.
//

#import "ConversateViewController.h"

@interface ConversateViewController ()

@end

@implementation ConversateViewController
@synthesize questionsArray;
@synthesize questionsLabel;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.questionsArray = [[NSArray alloc] initWithObjects:@"What's keeping you busy when you're not at events like this or at work?",@"Are you getting away this summer?", @"How did you come to be in your line of work?", @"What’s your connection to the event?", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) askQuestion
{
    NSUInteger index = arc4random_uniform(self.questionsArray.count);
    self.questionsLabel.text = [self.questionsArray objectAtIndex:index];
    [UIView animateWithDuration:2.0 animations:^{
        self.questionsLabel.alpha = 1;
    }];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.questionsLabel.text = nil;
    self.questionsLabel.alpha = 0.0;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self askQuestion];
}

@end
