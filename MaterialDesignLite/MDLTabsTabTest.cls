"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTabsTabTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsTabTest guid: (GUID fromString: '{1bf24bef-6fec-403a-a545-dd4bdb8ba8b5}')!
MDLTabsTabTest comment: ''!
!MDLTabsTabTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLTabsTabTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTab ] generates: '<a class="mdl-tabs__tab"></a>'!

testIsActive	self assert: [ :html | html mdlTab isActive ] generates: '<a class="mdl-tabs__tab is-active"></a>'!

testIsActiveIf	self assert: [ :html | html mdlTab isActiveIf: true ] generates: '<a class="mdl-tabs__tab is-active"></a>'.	self assert: [ :html | html mdlTab isActiveIf: false ] generates: '<a class="mdl-tabs__tab"></a>'.!

testWithContent	self assert: [ :html | html mdlTab: 'test' ] generates: '<a class="mdl-tabs__tab">test</a>'! !
!MDLTabsTabTest categoriesFor: #testBareBrush!public!tests! !
!MDLTabsTabTest categoriesFor: #testIsActive!public!tests! !
!MDLTabsTabTest categoriesFor: #testIsActiveIf!public!tests! !
!MDLTabsTabTest categoriesFor: #testWithContent!public!tests! !

