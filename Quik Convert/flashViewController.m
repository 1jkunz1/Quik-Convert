//
//  flashViewController.m
//  Quik Convert
//
//  Created by Joseph Kunzler on 4/25/14.
//  Copyright (c) 2014 Joseph Kunzler. All rights reserved.
//

#import "flashViewController.h"

@interface flashViewController ()


@end

@implementation flashViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}



- (IBAction)tempConvert:(id)sender {
    
    double enteredInt = [_fTemp.text doubleValue ];
    double celcius = (enteredInt-32) * 5/9;
    [_cTemp setText:[NSString stringWithFormat:@"%f",celcius]];
    
    
}


- (IBAction)clearTemp:(id)sender {
    
    _fTemp.text = @"";
    _cTemp.text = @"";
    

}
- (IBAction)clearMeasure:(id)sender {

    _feet.text = @"";
    _inches.text = @"";
    _meters.text = @"";
    _centimeters.text = @"";
    _yards.text = @"";
}


- (IBAction)measureConvert:(id)sender {
    
    double enteredInches;
    double enteredMeters;
    double enteredYards;
    double enteredCentimeters;
    double enteredFeet;
    
    if (_feet.hasText == TRUE && _inches.hasText == FALSE && _meters.hasText == FALSE && _centimeters.hasText == FALSE && _yards.hasText == FALSE) {
        
        double enteredFeet = [_feet.text doubleValue ];
        
        enteredMeters = enteredFeet / 3.2808;
        enteredInches = enteredFeet * 12;
        enteredYards = enteredFeet * 3;
        enteredCentimeters = enteredFeet / 0.03280;
        
        [_meters setText:[NSString stringWithFormat:@"%f",enteredMeters]];
        [_inches setText:[NSString stringWithFormat:@"%f",enteredInches]];
        [_yards setText:[NSString stringWithFormat:@"%f",enteredYards]];
        [_centimeters setText:[NSString stringWithFormat:@"%f",enteredCentimeters]];
        
        
    }
    
    else if (_inches.hasText == TRUE && _feet.hasText == FALSE && _meters.hasText == FALSE && _centimeters.hasText == FALSE && _yards.hasText == FALSE) {
        
        double enteredInches = [_inches.text doubleValue];
        
        enteredMeters = enteredInches / 3.2808;
        enteredFeet = enteredInches / 12;
        enteredYards = enteredInches * 3;
        enteredCentimeters = enteredInches / 0.03280;
        
        [_meters setText:[NSString stringWithFormat:@"%f",enteredMeters]];
        [_feet setText:[NSString stringWithFormat:@"%f",enteredFeet]];
        [_yards setText:[NSString stringWithFormat:@"%f",enteredYards]];
        [_centimeters setText:[NSString stringWithFormat:@"%f",enteredCentimeters]];
            
        }
    
    else if(_meters.hasText == TRUE && _inches.hasText == FALSE && _feet.hasText == FALSE && _centimeters.hasText == FALSE && _yards.hasText == FALSE) {
        
        double enteredMeters = [_meters.text doubleValue];
        
        enteredFeet = enteredMeters * 3.2808;
        enteredInches = enteredMeters * 12;
        enteredYards = enteredMeters * 3;
        enteredCentimeters = enteredMeters / 0.03280;
        
        [_feet setText:[NSString stringWithFormat:@"%f",enteredFeet]];
        [_inches setText:[NSString stringWithFormat:@"%f",enteredInches]];
        [_yards setText:[NSString stringWithFormat:@"%f",enteredYards]];
        [_centimeters setText:[NSString stringWithFormat:@"%f",enteredCentimeters]];
        
    }
    
    else if (_yards.hasText == TRUE && _inches.hasText == FALSE && _meters.hasText == FALSE && _centimeters.hasText == FALSE && _feet.hasText == FALSE) {
        
        double enteredYards = [_yards.text doubleValue];
        
        enteredMeters = enteredYards / 3.2808;
        enteredInches = enteredYards * 12;
        enteredFeet = enteredYards * 3;
        enteredCentimeters = enteredYards / 0.03280;
        
        [_feet setText:[NSString stringWithFormat:@"%f",enteredFeet]];
        [_inches setText:[NSString stringWithFormat:@"%f",enteredInches]];
        [_meters setText:[NSString stringWithFormat:@"%f",enteredMeters]];
        [_centimeters setText:[NSString stringWithFormat:@"%f",enteredCentimeters]];
        
    }
    
    else if (_centimeters.hasText == TRUE && _inches.hasText == FALSE && _meters.hasText == FALSE && _feet.hasText == FALSE && _yards.hasText == FALSE) {
        
        double enteredCentimeters = [_centimeters.text doubleValue];
        
        
        enteredMeters = enteredCentimeters / 3.2808;
        enteredInches = enteredCentimeters * 12;
        enteredYards = enteredCentimeters * 3;
        enteredFeet = enteredCentimeters * 0.03280;
        
        [_feet setText:[NSString stringWithFormat:@"%f",enteredFeet]];
        [_inches setText:[NSString stringWithFormat:@"%f",enteredInches]];
        [_meters setText:[NSString stringWithFormat:@"%f",enteredMeters]];
        [_yards setText:[NSString stringWithFormat:@"%f",enteredYards]];
        
        
    
    }
    
    
    }
@end
