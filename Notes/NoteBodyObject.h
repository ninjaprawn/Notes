/* Generated by RuntimeBrowser.
   Image: /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/System/Library/PrivateFrameworks/Notes.framework/Notes
 */

@class NSString, NoteObject, NSData;

@interface NoteBodyObject : NSManagedObject  {
}

@property(retain) NSString * content;
@property(readonly) NSString * contentAsPlainText;
@property(retain) NoteObject * owner;
@property(retain) NSData * externalRepresentation;
@property(retain) NSString * externalContentRef;


- (id)contentAsPlainTextPreservingNewlines;
- (id)contentAsPlainText;

@end
