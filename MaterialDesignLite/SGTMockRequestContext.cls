"Filed out from Dolphin Smalltalk 7"!

WARequestContext subclass: #SGTMockRequestContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SGTMockRequestContext guid: (GUID fromString: '{c8195790-c05c-4dfe-a5fe-95f8802dcf82}')!
SGTMockRequestContext comment: 'Mock used to emulate a request context'!
!SGTMockRequestContext categoriesForClass!SeasideGenerationTester! !
!SGTMockRequestContext methodsFor!

handler	^ WARequestHandler new! !
!SGTMockRequestContext categoriesFor: #handler!accessing/dynamic!public! !

!SGTMockRequestContext class methodsFor!

new	^ super request: WARequest new response: WABufferedResponse new! !
!SGTMockRequestContext class categoriesFor: #new!instance creation!public! !

