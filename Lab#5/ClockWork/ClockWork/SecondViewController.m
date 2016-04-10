//
//  SecondViewController.m
//  ClockWork
//
//  Created by Viktor on 3/5/16.
//  Copyright © 2016 HomeDev. All rights reserved.
//

#import "SecondViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface SecondViewController () {
    
    NSArray *workMins;
    NSArray *pauseMins;
    
    NSTimer *timer;
    
    UIColor *blueButton;
    
    int work;
    int pause;
    
    int minutes;
    int seconds;
    
    bool working;
    bool switched;
    
    AVAudioPlayer *player;
}
@end

@implementation SecondViewController

@synthesize timePicker, timerLabel, statusLabel, timerView, timerLabel2, stopButton;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    workMins = [[NSArray alloc] initWithObjects:@"1 min", @"20 min", @"25 min", @"30 min", @"35 min", @"40 min", @"45 min", @"50 min", @"55 min", @"60 min", nil];
    pauseMins = [[NSArray alloc] initWithObjects:@"1 min", @"5 min", @"10 min", @"15 min", @"20 min", @"25 min", @"30 min", nil];
    
    [timePicker selectRow:2 inComponent:0 animated:YES];
    [timePicker selectRow:1 inComponent:1 animated:YES];
    
    NSString *workPick = [[NSString alloc] initWithString:[workMins objectAtIndex:[timePicker selectedRowInComponent:0]]];
    NSString *pausePick = [[NSString alloc] initWithString:[pauseMins objectAtIndex:[timePicker selectedRowInComponent:1]]];
    
    NSScanner *scanner = [NSScanner scannerWithString:workPick];
    NSCharacterSet *numbers = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    
    [scanner scanUpToCharactersFromSet:numbers intoString:NULL];
    [scanner scanInt:&work];
    
    scanner = [NSScanner scannerWithString:pausePick];
    [scanner scanUpToCharactersFromSet:numbers intoString:NULL];
    [scanner scanInt:&pause];
    
    working = YES;
    switched = NO;
    
    
    
    NSMutableString *loadLabel = [[NSMutableString alloc] initWithFormat:@"%i:00", work];
    if(work < 10)
        [loadLabel insertString:@"0" atIndex:0];
    [timerLabel setText:loadLabel];
    
    NSString *soundFilePath = [NSString stringWithFormat:@"%@/sound.m4a", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:nil];
    [player setNumberOfLoops:0];
    
    [timerView setHidden:YES];
    
    UIBackgroundTaskIdentifier bgTask = 0;
    UIApplication *app = [UIApplication sharedApplication];
    bgTask = [app beginBackgroundTaskWithExpirationHandler:^{
        [app endBackgroundTask:bgTask];
    }];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    switch (component) {
        case 0:
            return [workMins count];
            break;
            
        case 1:
            return [pauseMins count];
            break;
            
        default:
            break;
    }
    return 0;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
            
        case 0:
            return [workMins objectAtIndex:row];
            break;
        
        case 1:
            return [pauseMins objectAtIndex:row];
            break;
        
        default:
            break;
    }
    return 0;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSString *workPick = [[NSString alloc] initWithString:[workMins objectAtIndex:[timePicker selectedRowInComponent:0]]];
    NSString *pausePick = [[NSString alloc] initWithString:[pauseMins objectAtIndex:[timePicker selectedRowInComponent:1]]];

    NSScanner *scanner = [NSScanner scannerWithString:workPick];
    NSCharacterSet *numbers = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    
    [scanner scanUpToCharactersFromSet:numbers intoString:NULL];
    [scanner scanInt:&work];

    scanner = [NSScanner scannerWithString:pausePick];
    [scanner scanUpToCharactersFromSet:numbers intoString:NULL];
    [scanner scanInt:&pause];

    NSMutableString *loadLabel = [[NSMutableString alloc] initWithFormat:@"%i:00", work];
    if(work < 10)
        [loadLabel insertString:@"0" atIndex:0];
    [timerLabel setText:loadLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)startPomodoro:(id)sender {
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
    minutes = work;
    seconds = 0;
    [self PrintTime];
    [statusLabel setText:@"Working..."];
    [timerView setHidden:NO];
    [stopButton setHidden:NO];
}

-(void)tick {
    
    if(seconds == 0)
    {
        if(minutes == 0)
        {
            if(working)
            {
                minutes = pause - 1;
                working = NO;
                switched = YES;
                [statusLabel setText:@"Relaxing!"];
            }
            else
            {
                minutes = work - 1;
                working = YES;
                switched = YES;
                [statusLabel setText:@"Working..."];
            }
        }
        else minutes--;
        seconds = 59;
    }
    else seconds--;
    
    [self PrintTime];
    if(switched)
    {
        [player play];
        switched = NO;
    }
}

-(void)PrintTime {
    
    NSMutableString *sec = [[NSMutableString alloc] initWithFormat:@"%d", seconds];
    NSMutableString *min = [[NSMutableString alloc] initWithFormat:@"%d", minutes];
    
    if(seconds < 10)
        [sec insertString:@"0" atIndex:0];
    if(minutes < 10)
        [min insertString:@"0" atIndex:0];
    
    NSString *timeString = [[NSString alloc] initWithFormat:@"%@:%@", min, sec];
    [timerLabel2 setText:timeString];
}

- (IBAction)stopTimer:(id)sender {
    [timerView setHidden:YES];
    
    [self addNumber:5 withNumber:3];
}

-(int)addNumber:(int)a withNumber:(int)b
{
    return a + b;
}

@end













