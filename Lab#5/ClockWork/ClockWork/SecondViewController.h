//
//  SecondViewController.h
//  ClockWork
//
//  Created by Viktor on 3/5/16.
//  Copyright © 2016 HomeDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UIPickerViewDataSource,
           UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *timePicker;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

- (IBAction)startPomodoro:(id)sender;
- (IBAction)stopTimer:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *timerView;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel2;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;

@end

