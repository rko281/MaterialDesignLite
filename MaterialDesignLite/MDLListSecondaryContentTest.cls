"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLListSecondaryContentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListSecondaryContentTest guid: (GUID fromString: '{aa26b45e-b8cd-447d-a865-9e738d3cbd8c}')!
MDLListSecondaryContentTest comment: ''!
!MDLListSecondaryContentTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListSecondaryContentTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListSecondaryContent ] generates: '<span class="mdl-list__item-secondary-content"></span>'!

testWithContent	self assert: [ :html | html mdlListSecondaryContent: 'test' ] generates: '<span class="mdl-list__item-secondary-content">test</span>'! !
!MDLListSecondaryContentTest categoriesFor: #testBareBrush!public!tests! !
!MDLListSecondaryContentTest categoriesFor: #testWithContent!public!tests! !

