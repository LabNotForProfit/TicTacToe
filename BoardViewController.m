//
//  BoardViewController.m
//  TicTacToe
//
//  Created by ALIREZA TABRIZI on 3/17/16.
//  Copyright © 2016 AR-T.com, Inc. All rights reserved.
//

#import "BoardViewController.h"

@interface BoardViewController ()
//first Row
@property (weak, nonatomic) IBOutlet UIButton *buttonA0;
@property (weak, nonatomic) IBOutlet UIButton *buttonB0;
@property (weak, nonatomic) IBOutlet UIButton *buttonC0;
//second Row
@property (weak, nonatomic) IBOutlet UIButton *buttonA1;
@property (weak, nonatomic) IBOutlet UIButton *buttonB1;
@property (weak, nonatomic) IBOutlet UIButton *buttonC1;
//third Row
@property (weak, nonatomic) IBOutlet UIButton *buttonA2;
@property (weak, nonatomic) IBOutlet UIButton *buttonB2;
@property (weak, nonatomic) IBOutlet UIButton *buttonC2;

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;



@end

@implementation BoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

*/


- (IBAction)onButtonPressed:(UIButton *)sender {
    [sender setTitle:@"X" forState:UIControlStateNormal];
}

//-(void)WhicPlayerTurn{
//    if (/*player == 1*/) {
//        //player = 2
//        //update the which player label reflecting the change
//    } else{
//        //pleayer = 1
//        //update the label
//    }
//}

@end
