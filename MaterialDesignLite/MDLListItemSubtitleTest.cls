"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLListItemSubtitleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemSubtitleTest guid: (GUID fromString: '{4432c392-2780-4e8e-8b1f-4d871fefada0}')!
MDLListItemSubtitleTest comment: ''!
!MDLListItemSubtitleTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListItemSubtitleTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListItemSubTitle ] generates: '<span class="mdl-list__item-sub-title"></span>'!

testWithContent	self assert: [ :html | html mdlListItemSubTitle: 'test' ] generates: '<span class="mdl-list__item-sub-title">test</span>'! !
!MDLListItemSubtitleTest categoriesFor: #testBareBrush!public!tests! !
!MDLListItemSubtitleTest categoriesFor: #testWithContent!public!tests! !

