"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MaterialColorPlatform
	instanceVariableNames: ''
	classVariableNames: 'Current'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MaterialColorPlatform guid: (GUID fromString: '{16dc2ba6-79cf-4a14-acb7-1b0627abb28b}')!
MaterialColorPlatform comment: 'Description--------------------A MaterialColorPlatform is a class managing the differences in code between different platform such as Pharo and Gemestone.Each subclasses will be in a specific package loaded only for this language. During the loading the subclass will register itself as the current platform.Examples--------------------	MaterialColorPlatform current methodsIn: aClass from: aProtocol '!
!MaterialColorPlatform categoriesForClass!Material-Design-Colors! !
!MaterialColorPlatform methodsFor!

allSelectorsOf: aClass from: aSymbol	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"		^ self subclassResponsibility!

isDolphin

	^false!

isGemstone	^ false!

isPharo	^ false! !
!MaterialColorPlatform categoriesFor: #allSelectorsOf:from:!accessing!public! !
!MaterialColorPlatform categoriesFor: #isDolphin!public!testing! !
!MaterialColorPlatform categoriesFor: #isGemstone!accessing!public! !
!MaterialColorPlatform categoriesFor: #isPharo!public!testing! !

!MaterialColorPlatform class methodsFor!

current	^ Current ifNil: [ self error: 'No platform registered' ]!

register	Current := self new! !
!MaterialColorPlatform class categoriesFor: #current!accessing!public! !
!MaterialColorPlatform class categoriesFor: #register!initialization!public! !

