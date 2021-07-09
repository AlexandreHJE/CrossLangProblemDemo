//
//  CalledBySwiftViewController.h
//  CrossLangProblemDemo
//
//  Created by pc1321 on 2021/7/9.
//

#import <UIKit/UIKit.h>
@class FlowCoordinator;
@protocol Storyboarded;

NS_ASSUME_NONNULL_BEGIN

@interface CalledBySwiftViewController : UIViewController
@property (nonatomic, weak) FlowCoordinator *coordinator;
- (id <Storyboarded>) storyboarded;
@end

NS_ASSUME_NONNULL_END
