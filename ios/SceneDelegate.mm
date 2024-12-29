#import "SceneDelegate.h"
#import <React/RCTBridge.h>
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    if ([scene isKindOfClass:[UIWindowScene class]]) {
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
        
        RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
        RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                         moduleName:@"StageManagerSplitView"
                                                  initialProperties:nil];
        rootView.backgroundColor = [UIColor whiteColor];
        
        UIViewController *rootViewController = [UIViewController new];
        rootViewController.view = rootView;
        
        self.window.rootViewController = rootViewController;
        [self.window makeKeyAndVisible];
    }
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
#if DEBUG
    return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
    return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Handle scene disconnection (e.g., save state)
}

- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Restart tasks paused when the scene was inactive
}

- (void)sceneWillResignActive:(UIScene *)scene {
    // Handle scene resigning active
}

- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Handle scene entering foreground
}

- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Handle scene entering background
}

@end