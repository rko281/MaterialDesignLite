"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLAbstractSeasideTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAbstractSeasideTestCase guid: (GUID fromString: '{6230e99c-4f8a-4303-8320-08bcbf6767f8}')!
MDLAbstractSeasideTestCase comment: ''!
!MDLAbstractSeasideTestCase categoriesForClass!Material-Design-Lite-Components-Tests-Abstract! !
!MDLAbstractSeasideTestCase methodsFor!

assert: aBlock generatedIncludes: aString	self		executeWithMockContext: [ | actual |			actual := WAHtmlCanvas builder render: aBlock.			self assert: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]!

assert: aBlock generatedIncludesAll: aCollection	self		executeWithMockContext: [ | generated |			generated := WAHtmlCanvas builder render: aBlock.			aCollection do: [ :aString | self assert: (generated includesSubstring: aString) ] ]!

assert: aBlock generates: aString	self executeWithMockContext: [ self assert: (WAHtmlCanvas builder render: aBlock) equals: aString ]!

deny: aBlock generatedIncludes: aString	self		executeWithMockContext: [ | actual |			actual := WAHtmlCanvas builder render: aBlock.			self deny: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]!

executeWithMockContext: aBlock	WACurrentRequestContext use: MDLMockRequestContext new during: [ aBlock value ]! !
!MDLAbstractSeasideTestCase categoriesFor: #assert:generatedIncludes:!asserting!public! !
!MDLAbstractSeasideTestCase categoriesFor: #assert:generatedIncludesAll:!asserting!public! !
!MDLAbstractSeasideTestCase categoriesFor: #assert:generates:!asserting!public! !
!MDLAbstractSeasideTestCase categoriesFor: #deny:generatedIncludes:!asserting!public! !
!MDLAbstractSeasideTestCase categoriesFor: #executeWithMockContext:!asserting!public! !

!MDLAbstractSeasideTestCase class methodsFor!

isAbstract	^ self = MDLAbstractSeasideTestCase! !
!MDLAbstractSeasideTestCase class categoriesFor: #isAbstract!public!testing! !

