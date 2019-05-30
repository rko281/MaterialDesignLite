"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLLeftPanelResizerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLeftPanelResizerTest guid: (GUID fromString: '{f19bda8a-44c9-4738-aeac-4eebab7c71e0}')!
MDLLeftPanelResizerTest comment: ''!
!MDLLeftPanelResizerTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Panels! !
!MDLLeftPanelResizerTest methodsFor!

testPanelIsInitialized	self assert: [ :html | html render: MDLLeftPanelResizer new ] generatedIncludes: 'initLeftResizer()'!

testRendering	self assert: [ :html | html render: MDLLeftPanelResizer new ] generatedIncludes: 'class="resizer-left resizer"'! !
!MDLLeftPanelResizerTest categoriesFor: #testPanelIsInitialized!public!tests! !
!MDLLeftPanelResizerTest categoriesFor: #testRendering!public!tests! !

