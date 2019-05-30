"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLAbstractFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAbstractFilter guid: (GUID fromString: '{000e7bee-8d5b-4bf5-8f65-acf4a4d1e003}')!
MDLAbstractFilter comment: 'MDLAbstractFilter class	instanceVariableNames: '''''!
!MDLAbstractFilter categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLAbstractFilter class methodsFor!

formatedElement: aString matches: aPattern	^ self subclassResponsibility!

isAbstract	^ self = MDLAbstractFilter!

selectMatchingFrom: aCollection format: aFormatBlock with: aPattern	"I take as parameter a collection of elements to match, a block to get the readable format of the element and a pattern and I should return a collection of elements matching the pattern in their readable format."	^ aCollection select: [ :each | self formatedElement: (aFormatBlock value: each) matches: aPattern ]! !
!MDLAbstractFilter class categoriesFor: #formatedElement:matches:!accessing!public! !
!MDLAbstractFilter class categoriesFor: #isAbstract!public!testing! !
!MDLAbstractFilter class categoriesFor: #selectMatchingFrom:format:with:!accessing!public! !

