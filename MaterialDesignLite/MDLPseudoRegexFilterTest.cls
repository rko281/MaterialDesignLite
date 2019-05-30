"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilterTest subclass: #MDLPseudoRegexFilterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPseudoRegexFilterTest guid: (GUID fromString: '{0cfa299c-c4b5-43d6-9f5a-d7ac271095c0}')!
MDLPseudoRegexFilterTest comment: ''!
!MDLPseudoRegexFilterTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLPseudoRegexFilterTest methodsFor!

actualClass	^ MDLPseudoRegexFilter!

testAdaptPattern	self assert: (self actualClass adaptPattern: 'test') equals: '.*test.*'.	self assert: (self actualClass adaptPattern: 'tes*t') equals: 'tes.*t'!

testFormatedElementMatches	self assert: (self actualClass formatedElement: 'test' matches: 'test.*' asRegexIgnoringCase).	self assert: (self actualClass formatedElement: 'Test' matches: 'test.*' asRegexIgnoringCase).	self assert: (self actualClass formatedElement: 'testToto' matches: 'test.*' asRegexIgnoringCase).	self deny: (self actualClass formatedElement: 'anothertest' matches: 'test.*' asRegexIgnoringCase)!

testSelectMatchingFromFormatWith	self		assertCollection:			(self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2' 'anothertest2' 'testAnother') format: [ :each | (each copyReplaceAll: 'test' with: 'atest') copyReplaceAll: 'Test' with: 'aTest' ] with: '^atest*')		hasSameElements: #('test' 'Test' 'testAnother').			'^atest.*' asRegexIgnoringCase matches: 'atest'! !
!MDLPseudoRegexFilterTest categoriesFor: #actualClass!helpers!public! !
!MDLPseudoRegexFilterTest categoriesFor: #testAdaptPattern!public!tests! !
!MDLPseudoRegexFilterTest categoriesFor: #testFormatedElementMatches!public!tests! !
!MDLPseudoRegexFilterTest categoriesFor: #testSelectMatchingFromFormatWith!public!tests! !

