"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLTRootDialogRendererTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTRootDialogRendererTest guid: (GUID fromString: '{56c3e6da-a64b-4518-b1ba-b0092d200007}')!
MDLTRootDialogRendererTest comment: ''!
!MDLTRootDialogRendererTest categoriesForClass!Material-Design-Lite-Extensions-Tests-RootDialog! !
!MDLTRootDialogRendererTest methodsFor!

testRenderEmptyGenericDialogOn	"This component is not available on Gemstone"	self isOnGemstone ifTrue: [ ^ self ].		self		assert: [ :html | MDLMockRootDialogRenderer new renderEmptyGenericDialogOn: html ]		generatedIncludesAll: #('mdl-dialog' 'data-openbtnid="root-dialog__open"' 'data-closebtnid="root-dialog__close"')! !
!MDLTRootDialogRendererTest categoriesFor: #testRenderEmptyGenericDialogOn!public!tests! !

