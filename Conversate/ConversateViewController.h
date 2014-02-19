//
//  ConversateViewController.h
//  Conversate
//
//  Created by Andrew Butler on 2/17/14.
//  Copyright (c) 2014 Andrew Butler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConversateViewController : UIViewController {
    NSArray *questionsArray;
}

@property (strong, nonatomic) IBOutlet UILabel *questionsLabel;
@property (strong, nonatomic) NSArray *questionsArray;

- (void) askQuestion;
@end
