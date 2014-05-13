//
//  ViewController.m
//  Multiply
//
//  Created by Thomas M. Mroz on 5/12/14.
//  Copyright (c) 2014 BGHS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;

@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;

@property (weak, nonatomic) IBOutlet UISlider *myslider;
@end

@implementation ViewController


- (IBAction)sliderMultiply:(id)sender {
         NSLog(@"%f", sender.value);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//slider code
//-(IBAction)sliderchange:(UISlider *)sender
//{
//self.multiplier.text = [NSString
//NSLog(@"%f", sender.value);
//}
- (IBAction)onCalculateButtonPressed:(id)sender
{
    int number = [self.myNumber.text intValue];
    NSInteger multiple = [self.myMultiplier.text integerValue];
    NSInteger result = number * multiple;


    if(result > 20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else{
        self.view.backgroundColor = [UIColor whiteColor];

    }

    if ((result %3 == 0) && (result %5 == 0))
    {
        self.myAnswer.text = @"fizzbuzz";
    }
    else if (result %3 == 0)
    {
        self.myAnswer.text = @"fizz";
    }
    else if (result %5 == 0)
    {
        self.myAnswer.text = @"buzz";
    }
    else
        self.myAnswer.text = [NSString stringWithFormat:@"%d", result];

    //gets rid of keyboard;
    [self.myNumber resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
