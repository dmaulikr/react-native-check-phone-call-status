
#import "RNCheckPhoneCallStatus.h"
#import "React/RCTLog.h"
#import <AVFoundation/AVAudioSession.h>

@implementation RNCheckPhoneCallStatus

RCT_EXPORT_MODULE()
// - (dispatch_queue_t)methodQueue
// {
//     return dispatch_get_main_queue();
// }
RCT_EXPORT_METHOD(get)
{
  CTCallCenter *callCenter = [[[CTCallCenter alloc] init] autorelease];
  NSString *phoneStatus = @"not on a call yo";
  for (CTCall *call in callCenter.currentCalls)  {
      if (call.callState == CTCallStateConnected) {
        phoneStatus = @"Im on da phoneeeee";
      }
  }
  RCTLogInfo(@"ON A CALL %@\n", phoneStatus);
  // float volume = [AVAudioSession sharedInstance].outputVolume;
  // RCTLogInfo(@"The system volume level is %f", volume);
}

// RCT_EXPORT_METHOD(isOnCall)
// {
//   CTCallCenter *callCenter = [[[CTCallCenter alloc] init] autorelease];
//   for (CTCall *call in callCenter.currentCalls)  {
//       if (call.callState == CTCallStateConnected) {
//           RCTLogInfo(@"++++++++===============IS ON A CALL");
//       }
//   }
//   RCTLogInfo(@"++++++++===============NOT ON A CALL");
// }

@end
