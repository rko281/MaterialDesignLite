"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLListItemSecondaryInfoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemSecondaryInfoTest guid: (GUID fromString: '{0fc94556-a45a-4bbb-934c-b3c9c1bca3d7}')!
MDLListItemSecondaryInfoTest comment: ''!
!MDLListItemSecondaryInfoTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListItemSecondaryInfoTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListItemSecondaryInfo ] generates: '<span class="mdl-list__item-secondary-info"></span>'!

testWithContent	self assert: [ :html | html mdlListItemSecondaryInfo: 'test' ] generates: '<span class="mdl-list__item-secondary-info">test</span>'! !
!MDLListItemSecondaryInfoTest categoriesFor: #testBareBrush!public!tests! !
!MDLListItemSecondaryInfoTest categoriesFor: #testWithContent!public!tests! !

