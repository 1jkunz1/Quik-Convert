//
//  flashViewController.h
//  Quik Convert
//
//  Created by Joseph Kunzler on 4/25/14.
//  Copyright (c) 2014 Joseph Kunzler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface flashViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *measureHeading;
@property (weak, nonatomic) IBOutlet UILabel *tempHeading;
@property (weak, nonatomic) IBOutlet UITextField *fTemp;
@property (weak, nonatomic) IBOutlet UITextField *cTemp;
@property (weak, nonatomic) IBOutlet UITextField *feet;
@property (weak, nonatomic) IBOutlet UITextField *inches;
@property (weak, nonatomic) IBOutlet UITextField *meters;
@property (weak, nonatomic) IBOutlet UITextField *yards;
@property (weak, nonatomic) IBOutlet UITextField *centimeters;
- (IBAction)clearTemp:(id)sender;
- (IBAction)clearMeasure:(id)sender;
- (IBAction)tempConvert:(id)sender;
- (IBAction)measureConvert:(id)sender;

@end
