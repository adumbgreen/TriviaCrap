@interface PRPowerUp : NSObject
{
    int _index;
}
@property(nonatomic) int index;

@end

@interface PRPowerUPButton : UIButton
{
    PRPowerUp *_powerUp;
}
@property(retain, nonatomic) PRPowerUp *powerUp;
@end

@interface PRQuestionViewController
{
}
@property(retain, nonatomic) UILabel *correctAnswerLabel; 
- (void)showCorrectAnswer;
- (void)bouncePowerUps;
- (void)setupFreePU:(int)arg1;
@end

%hook PRQuestionViewController;
	
- (BOOL)powerUpButtonAction:(id)arg1 {
    [self showCorrectAnswer];
    [self bouncePowerUps]
    return NO;
}

- (int)timerCount {
    return 30;
}

%end;