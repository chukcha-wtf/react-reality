#import <React/RCTViewManager.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTBridgeModule.h>
@interface RCT_EXTERN_MODULE(RHDMonoViewManager, RCTViewManager)
RCT_EXTERN_METHOD(doTap:(double)x y:(double)y resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
@end
@interface RCT_EXTERN_MODULE(RHDSceneManager, RCTEventEmitter)
RCT_EXTERN_METHOD(addNode:(SCNNode *)node parentID:(NSString *)parentID resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(removeNode:(NSString *)id resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(updateNode:(NSString *)forNode newProps:(NSDictionary *)newProps resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setBox:(SCNBox *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setCapsule:(SCNCapsule *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setCone:(SCNCone *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setCylinder:(SCNCylinder *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setPlane:(SCNPlane *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setPyramid:(SCNPyramid *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setSphere:(SCNBox *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setText:(SCNText *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setTorus:(SCNTorus *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setTube:(SCNTube *)g forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setGeometry:(SCNGeometry *)geometry forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setMaterial:(SCNMaterial *)material forNode:(NSString *)forNode atPosition:(NSInteger)atPosition resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(setMaterialProperty:(NSDictionary *)materialProperty propertyName:(NSString *)propertyName forMaterialAtPosition:(NSInteger)forMaterialAtPosition forNode:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(removeGeometry:(NSString *)forNode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(removeMaterial:(NSString *)forNode atPosition:(NSInteger)atPosition resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(clear:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(resume:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(pause:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
@end
@interface RCT_EXTERN_MODULE(RHDARDeviceMotion, RCTEventEmitter)
RCT_EXTERN_METHOD(setUpdateInterval:(double)interval);
RCT_EXTERN_METHOD(getUpdateInterval:(RCTResponseSenderBlock)cb);
RCT_EXTERN_METHOD(getData:(RCTResponseSenderBlock)cb);
RCT_EXTERN_METHOD(removeListeners:(double)count);
@end
@interface RCT_EXTERN_MODULE(RHDARGeosManager, NSObject)
RCT_EXTERN_METHOD(addNode:(SCNNode *)node parent:(NSString *)parent resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addBox:(SCNBox *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addSphere:(SCNSphere *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addCylinder:(SCNCylinder *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addCone:(SCNCone *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addTorus:(SCNTorus *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addPyramid:(SCNPyramid *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addTube:(SCNTube *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addPlane:(SCNPlane *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addShape:(SCNShape *)geometry nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addLight:(SCNLight *)light nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(removeNode:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(updateNode:(NSString *)nodeid properties:(NSDictionary *)properties resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(addSpriteText:(NSString *)text nodeid:(NSString *)nodeid resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
@end
@interface RCT_EXTERN_MODULE(RHDARTextManager, NSObject)
RCT_EXTERN_METHOD(mount:(SCNTextNode *)textNode node:(SCNNode *)node frame:(NSString *)frame);
@end
@interface RCT_EXTERN_MODULE(RHDARViewManager, RCTViewManager)
RCT_EXTERN_METHOD(pause:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(resume:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(hitTestPlanes:(NSDictionary *)pointDict types:(NSInteger)types resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(hitTestSceneObjects:(NSDictionary *)pointDict resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(getCamera:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(getCameraPosition:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(focusScene:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(clearScene:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXTERN_METHOD(projectPoint:(NSDictionary *)pointDict resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);
RCT_EXPORT_VIEW_PROPERTY(onPlaneDetected, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onPlaneRemoved, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onFeaturesDetected, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onLightEstimation, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onPlaneUpdate, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onTrackingState, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onTapOnPlaneUsingExtent, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onTapOnPlaneNoExtent, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onEvent, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onARKitError, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(preview, BOOL);
RCT_EXPORT_VIEW_PROPERTY(debug, BOOL);
RCT_EXPORT_VIEW_PROPERTY(planeDetection, BOOL);
RCT_EXPORT_VIEW_PROPERTY(origin, NSDictionary *);
RCT_EXPORT_VIEW_PROPERTY(lightEstimationEnabled, BOOL);
RCT_EXPORT_VIEW_PROPERTY(autoenablesDefaultLighting, BOOL);
RCT_EXPORT_VIEW_PROPERTY(worldAlignment, NSInteger);
@end