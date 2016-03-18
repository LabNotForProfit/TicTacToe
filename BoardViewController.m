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

@property NSString *player1;
@property NSString *player2;

@end

@implementation BoardViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // assign texts to player 1 and 2
    self.player1 = @"Player 1 X";
    self.player2 = @"Player 2 O";
    
    //set initial Player to be player 1
    self.whichPlayerLabel.text = self.player1;
}

#pragma mark - onButtonPressed
- (IBAction)onButtonPressed:(UIButton *)sender {
    //Check to see if label is player1
    if ([self.whichPlayerLabel.text containsString:self.player1]) {
        //send X to button
        [sender setTitle:@"X" forState:UIControlStateNormal];
        //change main label to player2
        self.whichPlayerLabel.text = self.player2;
        //change the color of the button to blue
        sender.tintColor = [UIColor blueColor];
        BOOL winner = [self horizontalWin];
        if (winner) {
            NSLog(@"winner");
        }
//        if (winner)
//        [self whoWon:winner];
        
    }
    //Check to see if label is player1
    else if ([self.whichPlayerLabel.text containsString:self.player2]){
        //send X to button
        [sender setTitle:@"O" forState:UIControlStateNormal];
        //change main label to player1
        self.whichPlayerLabel.text = self.player1;
        //change the color of the button to blue
        sender.tintColor = [UIColor redColor];
    }
}

//Horizontal Win
-(BOOL)horizontalWin{
        if (   ([self.buttonA0.titleLabel.text isEqualToString: self.buttonB0.titleLabel.text])
            && ([self.buttonB0.titleLabel.text isEqualToString: self.buttonC0.titleLabel.text])) {
            return YES;
        }
        if (   (self.buttonA1 == self.buttonB1)
            && (self.buttonA1 == self.buttonC1)) {
            return YES;
        }
        if (   (self.buttonA2 == self.buttonB2)
            && (self.buttonA2 == self.buttonC2)) {
            return YES;
        }
    return NO;
}
//    if (self.buttonA0 != NULL) {
//        if (((self.buttonA0 == self.buttonB0)
//             && (self.buttonA0 == self.buttonC0)) ||
//            ((self.buttonA0 == self.buttonA1) && (self.buttonA0 == self.buttonA2))) {
//            return YES;
//        }
//    }

- (void)whoWon:(BOOL)winner{
    if (winner) {
        UIAlertController *whoWonAlertController = [UIAlertController alertControllerWithTitle:@"Winner" message:@"X is Winner!" preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [whoWonAlertController addAction:okButton];
        
        [self presentViewController:whoWonAlertController animated:YES completion:nil];
    }
}


#pragma mark - psuedocode

//figure out the winning condition


@end
