"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilterTest subclass: #MDLInsensitiveSubstringFilterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLInsensitiveSubstringFilterTest guid: (GUID fromString: '{d3728c9e-f903-4158-bb55-107df9e51db3}')!
MDLInsensitiveSubstringFilterTest comment: ''!
!MDLInsensitiveSubstringFilterTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLInsensitiveSubstringFilterTest methodsFor!

actualClass	^ MDLInsensitiveSubstringFilter!

testFormatedElementMatches	self assert: (self actualClass formatedElement: 'test' matches: 'test').	self assert: (self actualClass formatedElement: 'Test' matches: 'test' ).	self assert: (self actualClass formatedElement: 'anothertest' matches: 'test').	self assert: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).	self assert: (self actualClass formatedElement: 'anothertest2' matches: 'test').	self assert: (self actualClass formatedElement: 'anotherTest2' matches: 'test' ).	self deny: (self actualClass formatedElement: 'anothertet2' matches: 'test' )!

testSelectMatchingFromFormatWith	self		assertCollection:			(self actualClass				selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2' 'anothertest2' 'somethingElse')				format: [ :each | (each copyReplaceAll: 'test' with: 'atest') copyReplaceAll: 'Test' with: 'aTest' ]				with: 'atest')		hasSameElements: #('test' 'anothertest2' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2')! !
!MDLInsensitiveSubstringFilterTest categoriesFor: #actualClass!helpers!public! !
!MDLInsensitiveSubstringFilterTest categoriesFor: #testFormatedElementMatches!public!tests! !
!MDLInsensitiveSubstringFilterTest categoriesFor: #testSelectMatchingFromFormatWith!public!tests! !

