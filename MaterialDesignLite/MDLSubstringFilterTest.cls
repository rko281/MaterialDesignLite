"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilterTest subclass: #MDLSubstringFilterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSubstringFilterTest guid: (GUID fromString: '{339c4614-10f5-40c7-9866-41b4408ae8ec}')!
MDLSubstringFilterTest comment: ''!
!MDLSubstringFilterTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLSubstringFilterTest methodsFor!

actualClass	^ MDLSubstringFilter!

testFormatedElementMatches	self assert: (self actualClass formatedElement: 'test' matches: 'test').	self deny: (self actualClass formatedElement: 'Test' matches: 'test' ).	self assert: (self actualClass formatedElement: 'anothertest' matches: 'test').	self deny: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).	self assert: (self actualClass formatedElement: 'anothertest2' matches: 'test').	self deny: (self actualClass formatedElement: 'anotherTest2' matches: 'test' ).	self deny: (self actualClass formatedElement: 'anothertet2' matches: 'test' )!

testSelectMatchingFromFormatWith	self		assertCollection:			(self actualClass				selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2' 'anothertest2')				format: [ :each | (each copyReplaceAll: 'test' with: 'atest') copyReplaceAll: 'Test' with: 'aTest' ]				with: 'atest')		hasSameElements: #('test' 'anothertest2')! !
!MDLSubstringFilterTest categoriesFor: #actualClass!helpers!public! !
!MDLSubstringFilterTest categoriesFor: #testFormatedElementMatches!public!tests! !
!MDLSubstringFilterTest categoriesFor: #testSelectMatchingFromFormatWith!public!tests! !

