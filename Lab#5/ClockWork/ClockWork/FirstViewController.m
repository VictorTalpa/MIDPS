//
//  FirstViewController.m
//  ClockWork
//
//  Created by Viktor on 3/5/16.
//  Copyright © 2016 HomeDev. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () {
    
    NSTimer *timer;
    
    int miliseconds;
    int seconds;
    int minutes;
    
    bool started;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    miliseconds = 0;
    seconds = 0;
    minutes = 0;
    started = NO;
    
    UIBackgroundTaskIdentifier bgTask = 0;
    UIApplication *app = [UIApplication sharedApplication];
    bgTask = [app beginBackgroundTaskWithExpirationHandler:^{
        [app endBackgroundTask:bgTask];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)startTimer:(id)sender
{
    if(!started)
    {
        [timer invalidate];
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(tick) userInfo:nil repeats:YES];
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
        started = YES;
    }
    else
    {
        [timer invalidate];
        [sender setTitle:@"Start" forState:UIControlStateNormal];
        started = NO;
    }
}

-(void)tick
{
    if(miliseconds == 9)
    {
        if(seconds == 59)
        {
            if(minutes == 59)
            {
                minutes = 0;
            }
            else minutes++;
            seconds = 0;
        }
        else seconds++;
        miliseconds = 0;
    }
    else miliseconds++;
    
    [self PrintTime];
}

-(void)PrintTime
{
    NSMutableString *msec = [[NSMutableString alloc] initWithFormat:@"%d", miliseconds];
    NSMutableString *sec = [[NSMutableString alloc] initWithFormat:@"%d", seconds];
    NSMutableString *min = [[NSMutableString alloc] initWithFormat:@"%d", minutes];
    
    if(miliseconds < 10)
        [msec insertString:@"0" atIndex:0];
    if(seconds < 10)
        [sec insertString:@"0" atIndex:0];
    if(minutes < 10)
        [min insertString:@"0" atIndex:0];
    
    NSString *timeString = [[NSString alloc] initWithFormat:@"%@:%@:%@", min, sec, msec];
    [countDownLabel setText:timeString];
}

- (IBAction)resetTimer:(id)sender {
    miliseconds = 0;
    seconds = 0;
    minutes = 0;
    [self PrintTime];
}
    
@end

