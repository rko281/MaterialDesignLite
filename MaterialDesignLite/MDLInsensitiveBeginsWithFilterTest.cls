"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilterTest subclass: #MDLInsensitiveBeginsWithFilterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLInsensitiveBeginsWithFilterTest guid: (GUID fromString: '{ca4b1065-ab24-4b5e-a019-a07b9ba3cfa1}')!
MDLInsensitiveBeginsWithFilterTest comment: ''!
!MDLInsensitiveBeginsWithFilterTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLInsensitiveBeginsWithFilterTest methodsFor!

actualClass	^ MDLInsensitiveBeginsWithFilter!

testFormatedElementMatches	self assert: (self actualClass formatedElement: 'test' matches: 'test').	self assert: (self actualClass formatedElement: 'Test' matches: 'test' ).	self deny: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).!

testSelectMatchingFromFormatWith	self assertCollection: (self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest') format: [ :each | 'a' , each ] with: 'atest') hasSameElements: #('test' 'Test')! !
!MDLInsensitiveBeginsWithFilterTest categoriesFor: #actualClass!helpers!public! !
!MDLInsensitiveBeginsWithFilterTest categoriesFor: #testFormatedElementMatches!public!tests! !
!MDLInsensitiveBeginsWithFilterTest categoriesFor: #testSelectMatchingFromFormatWith!public!tests! !

