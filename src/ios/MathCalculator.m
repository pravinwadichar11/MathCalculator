/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

//- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
- (void)substract:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalculator

- (void)add:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    // NSNumber *param1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
    // NSNumber *param2 = [[command.arguments objectAtIndex:0] valueForKey:@"param2"];

    NSString *a = @"30";
    NSInteger b = [a integerValue];

    NSString *p = @"20";
    NSInteger q = [p integerValue];


    if(a >= 0 && p >= 0)
    {
        //NSString *total = [@(param1 + param2)];
        NSString *total = [NSString stringWithFormat: @"%ld", b+q];
        pluginResult =  [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)substract:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    // NSNumber *param1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
    // NSNumber *param2 = [[command.arguments objectAtIndex:0] valueForKey:@"param2"];

    NSString *a = @"30";
    NSInteger b = [a integerValue];

    NSString *p = @"20";
    NSInteger q = [p integerValue];


    if(a >= 0 && p >= 0)
    {
        //NSString* total = @(param1 - param2);
        NSString *total = [NSString stringWithFormat: @"%ld", b-q];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)read:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    NSString *a = @"30";
    NSInteger b = [a integerValue];

    NSString *p = @"Welcome to Foresight plugin...";

    if(a >= 0)
    {
        NSString *total = p;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:p];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)readlocaldata:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    NSString *a = @"30";
    NSInteger b = [a integerValue];

    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString *textToLoad = [prefs stringForKey:@"devicetoken"];

    if(a >= 0)
    {
        NSString *total = textToLoad;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:textToLoad];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

// - (void)coolMethod:(CDVInvokedUrlCommand*)command
// {
//     CDVPluginResult* pluginResult = nil;
//     NSString* echo = [command.arguments objectAtIndex:0];

//     if (echo != nil && [echo length] > 0) {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//     } else {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//     }

//     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
// }



@end
