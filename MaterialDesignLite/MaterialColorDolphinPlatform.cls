"Filed out from Dolphin Smalltalk 7"!

MaterialColorPlatform subclass: #MaterialColorDolphinPlatform
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MaterialColorDolphinPlatform guid: (GUID fromString: '{73541ddc-359a-4dd8-8718-f90125ed869f}')!
MaterialColorDolphinPlatform comment: ''!
!MaterialColorDolphinPlatform categoriesForClass!Material-Design-Colors! !
!MaterialColorDolphinPlatform methodsFor!

allSelectorsOf: aClass from: aSymbol
	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"
	
	| all category |

	all := IdentitySet new.
	category := MethodCategory name: aSymbol.

	aClass withAllSuperclassesDo: [ :cls | all addAll: (cls selectorsInCategory: category)].

	^all!

isDolphin
	^true! !
!MaterialColorDolphinPlatform categoriesFor: #allSelectorsOf:from:!accessing!public! !
!MaterialColorDolphinPlatform categoriesFor: #isDolphin!public!testing! !

!MaterialColorDolphinPlatform class methodsFor!

initialize
	self register! !
!MaterialColorDolphinPlatform class categoriesFor: #initialize!public! !

