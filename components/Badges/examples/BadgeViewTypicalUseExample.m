// Copyright 2021-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <UIKit/UIKit.h>

#import "MDCBadgeView.h"

API_AVAILABLE(ios(13.0))
@interface BadgeViewTypicalUseExample : UIViewController
@end

@implementation BadgeViewTypicalUseExample

- (instancetype)init {
  self = [super init];
  if (self) {
    self.title = @"Badges";
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor systemGrayColor];

  MDCBadgeView *singleDigitBadge = [[MDCBadgeView alloc] init];
  singleDigitBadge.text = @"1";
  singleDigitBadge.backgroundColor = [UIColor systemRedColor];
  singleDigitBadge.textColor = [UIColor whiteColor];
  singleDigitBadge.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  [singleDigitBadge sizeToFit];
  [self.view addSubview:singleDigitBadge];

  MDCBadgeView *multiDigitBadge = [[MDCBadgeView alloc] init];
  multiDigitBadge.text = @"99+";
  multiDigitBadge.backgroundColor = [UIColor systemRedColor];
  multiDigitBadge.textColor = [UIColor whiteColor];
  multiDigitBadge.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  [multiDigitBadge sizeToFit];
  [self.view addSubview:multiDigitBadge];

  singleDigitBadge.translatesAutoresizingMaskIntoConstraints = NO;
  multiDigitBadge.translatesAutoresizingMaskIntoConstraints = NO;
  [NSLayoutConstraint activateConstraints:@[
    [self.view.centerXAnchor constraintEqualToAnchor:singleDigitBadge.centerXAnchor],
    [self.view.centerXAnchor constraintEqualToAnchor:multiDigitBadge.centerXAnchor],

    [self.view.centerYAnchor constraintEqualToAnchor:singleDigitBadge.topAnchor],
    [multiDigitBadge.topAnchor constraintEqualToAnchor:singleDigitBadge.bottomAnchor constant:16],
  ]];
}

@end

@implementation BadgeViewTypicalUseExample (CatalogByConvention)

+ (NSDictionary *)catalogMetadata {
  return @{
    @"breadcrumbs" : @[ @"Badges", @"Typical use" ],
    @"presentable" : @YES,
  };
}

+ (NSOperatingSystemVersion)minimumOSVersion {
  return (NSOperatingSystemVersion){13, 0, 0};
}

@end