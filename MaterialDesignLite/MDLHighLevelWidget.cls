"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLHighLevelWidget
	instanceVariableNames: 'properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLHighLevelWidget guid: (GUID fromString: '{ccc10b67-7e46-4d2d-b4a6-50e2958214fc}')!
MDLHighLevelWidget comment: 'I represent an abstract class for high level widgets.Interesting point is that I have properties through a Dictionary which allow me to add some behaviours. My properties should have a selector as key and an array of parameters as value.'!
!MDLHighLevelWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLHighLevelWidget methodsFor!

addProperties: aDictionary	properties addAll: aDictionary!

addPropertiesToBrush: aBrush	self properties keysAndValuesDo: [ :aSymbol :arguments | aBrush perform: aSymbol withArguments: arguments ]!

class: aString	| stringToAdd |	aString isEmptyOrNil ifTrue: [ ^ self ].	stringToAdd := self		propertiesAt: #class:		ifPresent: [ :oldClasses | 			stringToAdd := String				streamContents: [ :aStream | 					aStream						nextPutAll: oldClasses anyOne;						space;						nextPutAll: aString ] ]		ifAbsent: [ aString ].	self propertiesAt: #class: put: (Array with: stringToAdd)!

htmlClass	"htmlClass because it can cause problems to have a #class method in objects."	^ self propertiesAt: #class ifPresent: [ :array | array anyOne ] ifAbsent: [ nil ]!

id	^ self propertiesAt: #id: ifPresent: [ :array | array anyOne ] ifAbsent: [ nil ]!

id: aString	self propertiesAt: #id: put: (Array with: aString)!

initialize	super initialize.	properties := OrderedDictionary new!

onClick: anObject	self propertiesAt: #onClick: put: (Array with: anObject)!

properties	^ properties!

propertiesAt: aString	^ self properties at: aString!

propertiesAt: aString ifAbsent: aBlock	^ self properties at: aString ifAbsent: aBlock!

propertiesAt: aString ifPresent: aBlock ifAbsent: anotherBlock	^ self properties at: aString ifPresent: aBlock ifAbsent: anotherBlock!

propertiesAt: aString put: anArray	self properties at: aString put: anArray!

style: aString	| stringToAdd |	aString isEmptyOrNil ifTrue: [ ^ self ].	stringToAdd := self		propertiesAt: #style:		ifPresent: [ :oldStyle | 			String				streamContents: [ :aStream | 					aStream						nextPutAll: oldStyle anyOne;						space;						nextPutAll: aString ] ]		ifAbsent: [ aString ].	self propertiesAt: #style: put: stringToAdd! !
!MDLHighLevelWidget categoriesFor: #addProperties:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #addPropertiesToBrush:!actions!public! !
!MDLHighLevelWidget categoriesFor: #class:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #htmlClass!accessing!public! !
!MDLHighLevelWidget categoriesFor: #id!accessing!public! !
!MDLHighLevelWidget categoriesFor: #id:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #initialize!initialization!public! !
!MDLHighLevelWidget categoriesFor: #onClick:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #properties!accessing!public! !
!MDLHighLevelWidget categoriesFor: #propertiesAt:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #propertiesAt:ifAbsent:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #propertiesAt:ifPresent:ifAbsent:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #propertiesAt:put:!accessing!public! !
!MDLHighLevelWidget categoriesFor: #style:!accessing!public! !

