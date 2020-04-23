"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLAnchorButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAnchorButtonTest guid: (GUID fromString: '{d63a2da0-8da2-4df9-8551-eaac450c823f}')!
MDLAnchorButtonTest comment: ''!
!MDLAnchorButtonTest categoriesForClass!Material-Design-Lite-Components-Tests-Buttons! !
!MDLAnchorButtonTest methodsFor!

testAccentColor	self		assert: [ :html | 			html mdlAnchorButton				accentColor;				with: 'Validate' ]		generates: '<a class="mdl-button mdl-js-button mdl-button--accent">Validate</a>'!

testBareBrush	self assert: [ :html | html mdlAnchorButton ] generates: '<a class="mdl-button mdl-js-button"></a>'!

testColored	self		assert: [ :html | 			html mdlAnchorButton				colored;				with: 'Validate' ]		generates: '<a class="mdl-button mdl-js-button mdl-button--colored">Validate</a>'!

testFab	self		assert: [ :html | 			html mdlAnchorButton				fab;				with: '+' ]		generates: '<a class="mdl-button mdl-js-button mdl-button--fab">+</a>'!

testFor	self		assert: [ :html | 			html mdlAnchorButton				for: html nextId;				with: 'Validate' ]		generates: '<a class="mdl-button mdl-js-button" for="id1">Validate</a>'!

testIcon	self		assert: [ :html | 			html mdlAnchorButton				icon;				with: [ html mdlIcon: 'mood' ] ]		generates: '<a class="mdl-button mdl-js-button mdl-button--icon"><i class="material-icons">mood</i></a>'.	self assert: [ :html | html mdlAnchorButton icon: 'mood' ] generates: '<a class="mdl-button mdl-js-button mdl-button--icon"><i class="material-icons">mood</i></a>'!

testMiniFab	self		assert: [ :html | 			html mdlAnchorButton				miniFab;				with: '+' ]		generates: '<a class="mdl-button mdl-js-button mdl-button--mini-fab">+</a>'!

testPrimaryColor	self		assert: [ :html | 			html mdlAnchorButton				primaryColor;				with: 'Validate' ]		generates: '<a class="mdl-button mdl-js-button mdl-button--primary">Validate</a>'!

testRaised	self		assert: [ :html | 			html mdlAnchorButton				raised;				with: 'Validate' ]		generates: '<a class="mdl-button mdl-js-button mdl-button--raised">Validate</a>'!

testRippleEffect	self		assert: [ :html | 			html mdlAnchorButton				rippleEffect;				with: 'Validate' ]		generates: '<a class="mdl-button mdl-js-button mdl-js-ripple-effect">Validate</a>'!

testWithContent	self assert: [ :html | html mdlAnchorButton with: 'Validate' ] generates: '<a class="mdl-button mdl-js-button">Validate</a>'! !
!MDLAnchorButtonTest categoriesFor: #testAccentColor!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testBareBrush!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testColored!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testFab!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testFor!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testIcon!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testMiniFab!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testPrimaryColor!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testRaised!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testRippleEffect!public!tests! !
!MDLAnchorButtonTest categoriesFor: #testWithContent!public!tests! !

