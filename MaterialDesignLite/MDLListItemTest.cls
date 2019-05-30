"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLListItemTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemTest guid: (GUID fromString: '{b04e1228-d5c9-42c2-bb83-88c9845ff22c}')!
MDLListItemTest comment: ''!
!MDLListItemTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListItemTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListItem ] generates: '<li class="mdl-list__item"></li>'!

testThreeLine	self assert: [ :html | html mdlListItem threeLine ] generates: '<li class="mdl-list__item mdl-list__item--three-line"></li>'!

testTwoLine	self assert: [ :html | html mdlListItem twoLine ] generates: '<li class="mdl-list__item mdl-list__item--two-line"></li>'!

testWithContent	self assert: [ :html | html mdlListItem: 'test' ] generates: '<li class="mdl-list__item">test</li>'! !
!MDLListItemTest categoriesFor: #testBareBrush!public!tests! !
!MDLListItemTest categoriesFor: #testThreeLine!public!tests! !
!MDLListItemTest categoriesFor: #testTwoLine!public!tests! !
!MDLListItemTest categoriesFor: #testWithContent!public!tests! !

