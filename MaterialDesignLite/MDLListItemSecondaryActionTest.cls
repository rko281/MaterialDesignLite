"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLListItemSecondaryActionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemSecondaryActionTest guid: (GUID fromString: '{badd0d33-6f7a-4842-ab05-378d47cb528a}')!
MDLListItemSecondaryActionTest comment: ''!
!MDLListItemSecondaryActionTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListItemSecondaryActionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListItemSecondaryAction ] generates: '<a class="mdl-list__item-secondary-action"></a>'!

testWithContent	self assert: [ :html | html mdlListItemSecondaryAction: 'test' ] generates: '<a class="mdl-list__item-secondary-action">test</a>'! !
!MDLListItemSecondaryActionTest categoriesFor: #testBareBrush!public!tests! !
!MDLListItemSecondaryActionTest categoriesFor: #testWithContent!public!tests! !

