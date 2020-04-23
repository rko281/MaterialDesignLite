"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLRightPanelResizerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRightPanelResizerTest guid: (GUID fromString: '{13317099-4c5a-43e8-bc4f-7589b84ea517}')!
MDLRightPanelResizerTest comment: ''!
!MDLRightPanelResizerTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Panels! !
!MDLRightPanelResizerTest methodsFor!

testPanelIsInitialized	self assert: [ :html | html render: MDLRightPanelResizer new ] generatedIncludes: 'initRightResizer()'!

testRendering	self assert: [ :html | html render: MDLRightPanelResizer new ] generatedIncludes: 'class="resizer-right resizer"'! !
!MDLRightPanelResizerTest categoriesFor: #testPanelIsInitialized!public!tests! !
!MDLRightPanelResizerTest categoriesFor: #testRendering!public!tests! !

