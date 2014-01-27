//
//  QuizViewController.m
//  Quiz
//
//  Created by Arek Bolton on 1/27/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Calling the init method of the superclass
    self = [super initWithNibName:nibBundleOrNil bundle:nibBundleOrNil];
    if(self) {
        //creating two arrays an make the pointers point ot them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add questions and answers
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capitol of Vermont?"];
        [answers addObject:@"Montipiler"];
        
        [questions addObject:@"From what is cognac made"];
        [answers addObject:@"Grapes"];
        
    }
    return self;
}
-(IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    if (currentQuestionIndex) {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    NSLog(@"displaying question: %@", question);
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
}

@end
