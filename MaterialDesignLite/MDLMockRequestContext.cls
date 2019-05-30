"Filed out from Dolphin Smalltalk 7"!

WARequestContext subclass: #MDLMockRequestContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMockRequestContext guid: (GUID fromString: '{c0ce6f3e-8664-4e05-ab1e-530c369a8fee}')!
MDLMockRequestContext comment: ''!
!MDLMockRequestContext categoriesForClass!Material-Design-Lite-Components-Tests-Abstract! !
!MDLMockRequestContext methodsFor!

handler	^ WARequestHandler new! !
!MDLMockRequestContext categoriesFor: #handler!accessing/dynamic!public! !

!MDLMockRequestContext class methodsFor!

new	^ super request: WARequest new response: WABufferedResponse new! !
!MDLMockRequestContext class categoriesFor: #new!instance creation!public! !

