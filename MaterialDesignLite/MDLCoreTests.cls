"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLCoreTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCoreTests guid: (GUID fromString: '{272e01b4-7b3a-4736-a119-32d6afc8b4b8}')!
MDLCoreTests comment: ''!
!MDLCoreTests categoriesForClass!Material-Design-Lite-Core-Tests! !
!MDLCoreTests methodsFor!

mockMethod	"I am a Mock method for tests"		^ 2 + 3!

testCodeOf	self		assert: (self codeOf: #mockMethod)		equals:			'	"I am a Mock method for tests"		^ 2 + 3'! !
!MDLCoreTests categoriesFor: #mockMethod!helpers!public! !
!MDLCoreTests categoriesFor: #testCodeOf!helpers!public! !

