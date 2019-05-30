"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLButtonTest guid: (GUID fromString: '{c318baae-49ae-4850-bd4e-f1a90fe3c270}')!
MDLButtonTest comment: ''!
!MDLButtonTest categoriesForClass!Material-Design-Lite-Components-Tests-Buttons! !
!MDLButtonTest methodsFor!

testAccentColor	self		assert: [ :html | 			html mdlButton				accentColor;				with: 'Validate' ]		generates: '<button class="mdl-button mdl-js-button mdl-button--accent" type="submit">Validate</button>'!

testAsLabel	self		assert: [ :html | 			html mdlButton				asLabel;				with: 'Validate' ]		generates: '<label class="mdl-button mdl-js-button" type="submit">Validate</label>'!

testBareBrush	self assert: [ :html | html mdlButton ] generates: '<button class="mdl-button mdl-js-button" type="submit"></button>'!

testColored	self		assert: [ :html | 			html mdlButton				colored;				with: 'Validate' ]		generates: '<button class="mdl-button mdl-js-button mdl-button--colored" type="submit">Validate</button>'!

testFab	self		assert: [ :html | 			html mdlButton				fab;				with: '+' ]		generates: '<button class="mdl-button mdl-js-button mdl-button--fab" type="submit">+</button>'!

testFor	self		assert: [ :html | 			html mdlButton				for: html nextId;				with: 'Validate' ]		generates: '<button class="mdl-button mdl-js-button" for="id1" type="submit">Validate</button>'!

testIcon	self		assert: [ :html | 			html mdlButton				icon;				with: [ html mdlIcon: 'mood' ] ]		generates: '<button class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></button>'.	self assert: [ :html | html mdlButton icon: 'mood' ] generates: '<button class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></button>'!

testLabelIcon	self		assert: [ :html | 			html mdlButton				labelIcon;				with: [ html mdlIcon: 'mood' ] ]		generates: '<label class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></label>'.	self assert: [ :html | html mdlButton labelIcon: 'mood' ] generates: '<label class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></label>'!

testMiniFab	self		assert: [ :html | 			html mdlButton				miniFab;				with: '+' ]		generates: '<button class="mdl-button mdl-js-button mdl-button--mini-fab" type="submit">+</button>'!

testPrimaryColor	self		assert: [ :html | 			html mdlButton				primaryColor;				with: 'Validate' ]		generates: '<button class="mdl-button mdl-js-button mdl-button--primary" type="submit">Validate</button>'!

testRaised	self		assert: [ :html | 			html mdlButton				raised;				with: 'Validate' ]		generates: '<button class="mdl-button mdl-js-button mdl-button--raised" type="submit">Validate</button>'!

testResetType	self assert: [ :html | html mdlButton resetType; with: 'Validate' ] generates: '<button class="mdl-button mdl-js-button">Validate</button>'!

testRippleEffect	self		assert: [ :html | 			html mdlButton				rippleEffect;				with: 'Validate' ]		generates: '<button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit">Validate</button>'!

testWithContent	self assert: [ :html | html mdlButton: 'Validate' ] generates: '<button class="mdl-button mdl-js-button" type="submit">Validate</button>'! !
!MDLButtonTest categoriesFor: #testAccentColor!public!tests! !
!MDLButtonTest categoriesFor: #testAsLabel!public!tests! !
!MDLButtonTest categoriesFor: #testBareBrush!public!tests! !
!MDLButtonTest categoriesFor: #testColored!public!tests! !
!MDLButtonTest categoriesFor: #testFab!public!tests! !
!MDLButtonTest categoriesFor: #testFor!public!tests! !
!MDLButtonTest categoriesFor: #testIcon!public!tests! !
!MDLButtonTest categoriesFor: #testLabelIcon!public!tests! !
!MDLButtonTest categoriesFor: #testMiniFab!public!tests! !
!MDLButtonTest categoriesFor: #testPrimaryColor!public!tests! !
!MDLButtonTest categoriesFor: #testRaised!public!tests! !
!MDLButtonTest categoriesFor: #testResetType!public!tests! !
!MDLButtonTest categoriesFor: #testRippleEffect!public!tests! !
!MDLButtonTest categoriesFor: #testWithContent!public!tests! !

