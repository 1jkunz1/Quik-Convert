//
//  flashViewController.m
//  Quik Convert
//
//  Created by Joseph Kunzler on 4/25/14.
//  Copyright (c) 2014 Joseph Kunzler. All rights reserved.
//

#import "flashViewController.h"

@interface flashViewController ()
@property (weak, nonatomic) IBOutlet UILabel *measureHeading;
@property (weak, nonatomic) IBOutlet UILabel *tempHeading;
@property (weak, nonatomic) IBOutlet UITextField *fTemp;
@property (weak, nonatomic) IBOutlet UITextField *cTemp;
@property (weak, nonatomic) IBOutlet UITextField *feet;
@property (weak, nonatomic) IBOutlet UITextField *inches;
@property (weak, nonatomic) IBOutlet UITextField *meters;
@property (weak, nonatomic) IBOutlet UITextField *yards;
@property (weak, nonatomic) IBOutlet UITextField *centimeters;


- (IBAction)tempConvert:(id)sender;
- (IBAction)measureConvert:(id)sender;

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

- (IBAction)measureConvert:(id)sender {
    
    double enteredFeet = [_feet.text doubleValue];
    double enteredInches = [_inches.text doubleValue];
    double enteredMeters = [_meters.text doubleValue];
    double enteredYards = [_yards.text doubleValue];
    double enteredCentimeters = [_centimeters.text doubleValue];
    
    if (enteredFeet == TRUE) {
        
        double enteredInches = [_inches.text doubleValue];
        double enteredMeters = [_meters.text doubleValue];
        double enteredYards = [_yards.text doubleValue];
        double enteredCentimeters = [_centimeters.text doubleValue];
        
        enteredMeters = enteredFeet / 3.2808;
        enteredInches = enteredFeet * 12;
        enteredYards = enteredFeet * 3;
        enteredCentimeters = enteredFeet / 0.03280;
        
        [_centimeters setText:[NSString stringWithFormat:@"%f",enteredCentimeters]];
        [_centimeters setText:[NSString stringWithFormat:@"%f",enteredCentimeters]];
    }
    
    else if (enteredInches== TRUE) {
        
        double enteredFeet = [_feet.text doubleValue];
        double enteredMeters = [_meters.text doubleValue];
        double enteredYards = [_yards.text doubleValue];
        double enteredCentimeters = [_centimeters.text doubleValue];
        
        enteredMeters = enteredInches / 3.2808;
        enteredFeet = enteredInches / 12;
        enteredYards = enteredInches * 3;
        enteredCentimeters = enteredInches / 0.03280;
            
        }
    
    else if(enteredMeters==TRUE ) {
        
        double enteredFeet = [_feet.text doubleValue];
        double enteredInches = [_inches.text doubleValue];
        double enteredYards = [_yards.text doubleValue];
        double enteredCentimeters = [_centimeters.text doubleValue];
        
        enteredFeet = enteredMeters * 3.2808;
        enteredInches = enteredMeters * 12;
        enteredYards = enteredMeters * 3;
        enteredCentimeters = enteredMeters / 0.03280;
        
    }
    
    else if (enteredYards==TRUE) {
        
        double enteredFeet = [_feet.text doubleValue];
        double enteredInches = [_inches.text doubleValue];
        double enteredMeters = [_meters.text doubleValue];
        double enteredCentimeters = [_centimeters.text doubleValue];
        
        enteredMeters = enteredYards / 3.2808;
        enteredInches = enteredYards * 12;
        enteredFeet = enteredYards / 3;
        enteredCentimeters = enteredYards / 0.03280;
    }
    
    else if (enteredCentimeters==TRUE) {
        
        double enteredFeet = [_feet.text doubleValue];
        double enteredInches = [_inches.text doubleValue];
        double enteredMeters = [_meters.text doubleValue];
        double enteredYards = [_yards.text doubleValue];
        
        
        enteredMeters = enteredCentimeters / 3.2808;
        enteredInches = enteredCentimeters * 12;
        enteredYards = enteredCentimeters * 3;
        enteredFeet = enteredCentimeters * 0.03280;
    
    }
    
    
    
    
    
    
    
    }
@end
