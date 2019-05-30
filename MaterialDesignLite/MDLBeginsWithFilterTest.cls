"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilterTest subclass: #MDLBeginsWithFilterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLBeginsWithFilterTest guid: (GUID fromString: '{9c89097b-5c0a-4940-bdb2-92d53bbc77ca}')!
MDLBeginsWithFilterTest comment: ''!
!MDLBeginsWithFilterTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLBeginsWithFilterTest methodsFor!

actualClass	^ MDLBeginsWithFilter!

testFormatedElementMatches	self assert: (self actualClass formatedElement: 'test' matches: 'test').	self deny: (self actualClass formatedElement: 'Test' matches: 'test' ).	self deny: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).!

testSelectMatchingFromFormatWith	self assertCollection: (self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest') format: [ :each | 'a' , each ] with: 'atest') hasSameElements: #('test')! !
!MDLBeginsWithFilterTest categoriesFor: #actualClass!helpers!public! !
!MDLBeginsWithFilterTest categoriesFor: #testFormatedElementMatches!public!tests! !
!MDLBeginsWithFilterTest categoriesFor: #testSelectMatchingFromFormatWith!public!tests! !

