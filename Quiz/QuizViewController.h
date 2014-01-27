//
//  QuizViewController.h
//  Quiz
//
//  Created by Arek Bolton on 1/27/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    //the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //the view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;

@end
