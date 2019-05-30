"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLAbstractFilterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAbstractFilterTest guid: (GUID fromString: '{9fe6384a-0093-469c-93be-9dcd21edc056}')!
MDLAbstractFilterTest comment: ''!
!MDLAbstractFilterTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLAbstractFilterTest methodsFor!

actualClass	^ self subclassResponsibility!

testFormatedElementMatches	self subclassResponsibility!

testSelectMatchingFromFormatWith	self subclassResponsibility! !
!MDLAbstractFilterTest categoriesFor: #actualClass!helpers!public! !
!MDLAbstractFilterTest categoriesFor: #testFormatedElementMatches!public!tests! !
!MDLAbstractFilterTest categoriesFor: #testSelectMatchingFromFormatWith!public!tests! !

!MDLAbstractFilterTest class methodsFor!

isAbstract	^ self = MDLAbstractFilterTest! !
!MDLAbstractFilterTest class categoriesFor: #isAbstract!public!testing! !

