//
//  ViewController.m
//  2-Player-Math
//
//  Created by Alex Bearinger on 2017-01-16.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ViewController.h"
#import "GameController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1Lives;
@property (weak, nonatomic) IBOutlet UILabel *player2Lives;
@property NSString *answer;
@property GameController *gameController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _answer = @"";
    _gameController = [GameController new];
    self.questionLabel.text = [self.gameController question];
    self.player1Score.text = [self.gameController score:0];
    self.player2Score.text = [self.gameController score:1];
    self.player1Lives.text = @"Player1 lives: 3";
    self.player2Lives.text = @"Player2 lives: 3";
}

- (IBAction)button0:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:0]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button1:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:1]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button2:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:2]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button3:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:3]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button4:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:4]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button5:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:5]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button6:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:6]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button7:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:7]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button8:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:8]];
    self.answerLabel.text = self.answer;
}
- (IBAction)button9:(id)sender {
    self.answer = [self.answer stringByAppendingString:[_gameController currentAnswer:9]];
    self.answerLabel.text = self.answer;
}
- (IBAction)buttonEnter:(id)sender {
    if ([self.gameController checkAnswer:self.answer]){
        self.answerLabel.text = @"CORRECT!";
        self.answerLabel.backgroundColor = [UIColor greenColor];
    }
    else {
        self.answerLabel.text = @"WRONG!";
        self.answerLabel.backgroundColor = [UIColor redColor];
    }
    self.answer = @"";
    self.questionLabel.text = [self.gameController question];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end