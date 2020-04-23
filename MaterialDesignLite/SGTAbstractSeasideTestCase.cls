﻿"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SGTAbstractSeasideTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SGTAbstractSeasideTestCase guid: (GUID fromString: '{dcaa8edd-108c-4a3d-82c7-64ceec3952c4}')!
SGTAbstractSeasideTestCase comment: 'Abstract class to test generated seaside code.'!
!SGTAbstractSeasideTestCase categoriesForClass!SeasideGenerationTester! !
!SGTAbstractSeasideTestCase methodsFor!

assert: aBlock generatedIncludes: aString

assert: aBlock generatedIncludesAll: aCollection

assert: aBlock generates: aString

deny: aBlock generatedIncludes: aString

executeWithMockContext: aBlock
!SGTAbstractSeasideTestCase categoriesFor: #assert:generatedIncludes:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #assert:generatedIncludesAll:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #assert:generates:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #deny:generatedIncludes:!asserting!public! !
!SGTAbstractSeasideTestCase categoriesFor: #executeWithMockContext:!asserting!public! !

!SGTAbstractSeasideTestCase class methodsFor!

isAbstract
!SGTAbstractSeasideTestCase class categoriesFor: #isAbstract!public!testing! !
