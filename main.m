#import <Foundation/Foundation.h>

/**********.h*********/
@interface SampleClass:NSObject
/* method declaration */

@end


@implementation SampleClass

/* method returning the max between two numbers */

@end
/**********.h*********/

int main(int argc, const char * argv[]) {
    //20 plan
    //45 read
    //30 ak
    //NSString *CT;
    double CT=60*7;//Comsumption Time
    
    //****Formatter***
    
    NSDateFormatter *formatter = [NSDateFormatter new];//turn to use NSDateFormatterMediumStyle since this particular format only makes sense in the US. The styles format according to the locale preferences (i. e. according to the style the user has chosen in Settings.app).
    //you can use the awesome dateFormatFromTemplate:options:locale: method. Pass it the date parts you want and it will give you a date format that is useful in the current locale.

    [formatter setDateFormat:@"hh:mm"];
    //[formatter timeZone:[]];
    //Timezone
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    //[NSTimeZone timeZoneWithName:@"Asia/shanghai"]
    
    //****Formatter***

    
    //Now GMT NSDate *Now = [NSDate date];
    NSDate *Now = [NSDate dateWithTimeIntervalSinceNow:8*3600];
    NSLog(@"%@",Now);
    NSString *str_date = [formatter stringFromDate:Now];//NSString *str_date = [formatter stringFromDate:[NSDate date]];
    NSLog(@"%@",str_date);//combine above 2 into a method

    NSDate *Date1 = [NSDate dateWithTimeInterval:CT sinceDate:Now];
    NSLog(@"%@",[formatter stringFromDate:Date1]);//combine sacrifice the readable

    
    // array date
    double array_CT[10]={60*7,60*10,60*50};//specification of array naming
    //NSArray *CT = [NSArray arrayWithObjects:@"120",@"240"];
    NSDate *Date2 = [NSDate dateWithTimeInterval:array_CT[0] sinceDate:Date1];
    NSLog(@"%@",Date2);
    NSDate *Date3 = [Date2 dateByAddingTimeInterval:array_CT[1]];
    NSLog(@"%@",Date3);

    
//how to use array
    //format NSlog @"%@"
    //use git to learn, learn DEMO, swift+OC，https://guides.github.com    http://guides.github.com/overviews/flow/   http://github.com/explore

//It shall be scrapped by Google? There is a blog subsite on github also?

    //git in XCode
    //what is brew
    //specification of naming: str_time, etc.
    //specification of explanation
      }