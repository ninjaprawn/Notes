#import <Notes/Notes.h>

-(void)savenote {
    NoteContext *noteContext = [[%c(NoteContext) alloc] init];
    NSManagedObjectContext *context = [noteContext managedObjectContext];
    NoteStoreObject *store = [noteContext defaultStoreForNewNote];
    NoteObject *note = [%c(NSEntityDescription) insertNewObjectForEntityForName:@"Note" inManagedObjectContext:context];
    NoteBodyObject *body = [%c(NSEntityDescription) insertNewObjectForEntityForName:@"NoteBody" inManagedObjectContext:context];

    NSString *notetext = @"Your custom note text";
    NSArray *sep = [notetext componentsSeparatedByString:@"\n"];
    notetext = [sep componentsJoinedByString:@"<br />"];
    body.content = notetext;
    body.owner = note;
    
    note.store = store;
    note.integerId = [noteContext nextIndex];
    note.title = @"Title of Note";
    note.summary = @"summary here";
    note.body = body;
    note.creationDate = [NSDate date];
    note.modificationDate = [NSDate date];
    NSError *error;
    BOOL success = [noteContext saveOutsideApp:&error];
    if (!success) {
        UIAlertView*theAlert = [[UIAlertView alloc] initWithTitle:@"Error!" message:[error localizedDescription] delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [theAlert show];
        [theAlert release];
    }
    [noteContext release];
}