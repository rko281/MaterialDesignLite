"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SGTAbstractSeasideTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SGTAbstractSeasideTestCase guid: (GUID fromString: '{dcaa8edd-108c-4a3d-82c7-64ceec3952c4}')!
SGTAbstractSeasideTestCase comment: 'Abstract class to test generated seaside code.'!
!SGTAbstractSeasideTestCase categoriesForClass!SeasideGenerationTester! !
!SGTAbstractSeasideTestCase methodsFor!

assert: aBlock generatedIncludes: aString	self		executeWithMockContext: [ | actual |			actual := WAHtmlCanvas builder render: aBlock.			self assert: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]!

assert: aBlock generatedIncludesAll: aCollection	self		executeWithMockContext: [ | generated |			generated := WAHtmlCanvas builder render: aBlock.			aCollection do: [ :aString | self assert: (generated includesSubstring: aString) ] ]!

assert: aBlock generates: aString	self executeWithMockContext: [ self assert: (WAHtmlCanvas builder render: aBlock) equals: aString ]!

deny: aBlock generatedIncludes: aString	self		executeWithMockContext: [ | actual |			actual := WAHtmlCanvas builder render: aBlock.			self deny: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]!

executeWithMockContext: aBlock	WACurrentRequestContext use: SGTMockRequestContext new during: [ aBlock value ]! !
!SGTAbstractSeasideTestCase categoriesFor: #assert:generatedIncludes:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #assert:generatedIncludesAll:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #assert:generates:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #deny:generatedIncludes:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #executeWithMockContext:!asserting!public! !

!SGTAbstractSeasideTestCase class methodsFor!

isAbstract	^ self = SGTAbstractSeasideTestCase! !
!SGTAbstractSeasideTestCase class categoriesFor: #isAbstract!public!testing! !

