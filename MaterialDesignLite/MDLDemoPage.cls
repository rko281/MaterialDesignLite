"Filed out from Dolphin Smalltalk 7"!

MDLDemoComponent subclass: #MDLDemoPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemoPage guid: (GUID fromString: '{a3f9b9c9-9402-4537-b996-93d5a07d4877}')!
MDLDemoPage comment: 'Description--------------------I am an abstract component. My subclasses represent the main content of the MDLDemo.'!
!MDLDemoPage categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemoPage methodsFor!

pathName	^ self class pathName! !
!MDLDemoPage categoriesFor: #pathName!accessing!public! !

!MDLDemoPage class methodsFor!

isAbstract	^ self = MDLDemoPage!

pageName	^ self subclassResponsibility!

pagesToDisplay	^ (self allSubclasses reject: #isAbstract) sorted: [ :a :b | a priority < b priority ]!

pathName	"Use to define the URL name"	^ self pageName copyWithout: $  !

priority	^ self subclassResponsibility! !
!MDLDemoPage class categoriesFor: #isAbstract!public!testing! !
!MDLDemoPage class categoriesFor: #pageName!accessing!public! !
!MDLDemoPage class categoriesFor: #pagesToDisplay!accessing!public! !
!MDLDemoPage class categoriesFor: #pathName!accessing!public! !
!MDLDemoPage class categoriesFor: #priority!accessing!public! !

