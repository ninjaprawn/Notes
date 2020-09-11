**Archived - No guarantee this code still works for current iOS versions. It was written for ~iOS7/8.**

Notes
==========

The code used in this project can be used to add notes to the Notes.app using code. This is useful if you are making a notes widget.

How to use:
==========
- Download the github repo as a zip and extract
- Copy the Notes folder (contains Notes headers) and place it in your THEOS include folder
- In your tweak, write the following line at the top of your .xm file:
```
#import <Notes/Notes.h>
```
- Copy the function from example.xm. Create your own arguements to customize the variables on the go.
