//
//  PhotoController.h
//  
//
//  Created by Michael Vilabrera on 1/14/15.
//
//

#import <Foundation/Foundation.h>

@interface PhotoController : NSObject

+ (void) imageForPhoto:(NSDictionary *)photo size:(NSString *)size completion:(void(^)(UIImage *image))completion;

@end
