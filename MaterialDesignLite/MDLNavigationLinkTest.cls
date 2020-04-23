"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLNavigationLinkTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNavigationLinkTest guid: (GUID fromString: '{fc7b251e-6a5b-4fba-8c0d-0a537595b8b9}')!
MDLNavigationLinkTest comment: ''!
!MDLNavigationLinkTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLNavigationLinkTest methodsFor!

testBareBrush	self assert: [ :html | html mdlNavigationLink ] generates: '<a class="mdl-navigation__link"></a>'!

testBeCurrent	self assert: [ :html | html mdlNavigationLink beCurrent ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'!

testBeCurrentIf	self assert: [ :html | html mdlNavigationLink beCurrentIf: true ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'.	self assert: [ :html | html mdlNavigationLink beCurrentIf: false ] generates: '<a class="mdl-navigation__link"></a>'.	self assert: [ :html | html mdlNavigationLink beCurrentIf: [ true ] ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'.	self assert: [ :html | html mdlNavigationLink beCurrentIf: [ false ] ] generates: '<a class="mdl-navigation__link"></a>'.!

testWithContent	self assert: [ :html | html mdlNavigationLink: 'test' ] generates: '<a class="mdl-navigation__link">test</a>'! !
!MDLNavigationLinkTest categoriesFor: #testBareBrush!public!tests! !
!MDLNavigationLinkTest categoriesFor: #testBeCurrent!public!tests! !
!MDLNavigationLinkTest categoriesFor: #testBeCurrentIf!public!tests! !
!MDLNavigationLinkTest categoriesFor: #testWithContent!public!tests! !

