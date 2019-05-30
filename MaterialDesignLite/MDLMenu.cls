"Filed out from Dolphin Smalltalk 7"!

WAUnorderedListTag subclass: #MDLMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenu guid: (GUID fromString: '{832e230c-dc89-4b6e-9957-02c9364c6714}')!
MDLMenu comment: 'Description--------------------I am a brush to create a dropdown menu.Example--------------------	html div		class: ''container'';		shadow: 2;		with: [ html div				class: ''bar'';				with: [ html mdlButton icon						id: #bottomLeftButton;						with: [ html mdlIcon: #more_vert ].					html mdlMenu						bottomLeft;						for: #bottomLeftButton;						with: [ html mdlMenuItem: ''Some Action''.							html mdlMenuItem								fullBleedDivider;								with: ''Another Action''.							html mdlMenuItem								disabled;								with: ''Disabled Action''.							html mdlMenuItem: ''Yet Another Action'' ] ].			html div class: ''background'' ]'!
!MDLMenu categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLMenu methodsFor!

bottomLeft	self class: 'mdl-menu--bottom-left'!

bottomRight	self class: 'mdl-menu--bottom-right'!

for: anId	self attributeAt: 'for' put: anId!

initialize	super initialize.	self class: 'mdl-menu'.	self class: 'mdl-js-menu'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self rippleEffect ]!

topLeft	self class: 'mdl-menu--top-left'!

topRight	self class: 'mdl-menu--top-right'! !
!MDLMenu categoriesFor: #bottomLeft!options!public! !
!MDLMenu categoriesFor: #bottomRight!options!public! !
!MDLMenu categoriesFor: #for:!options!public! !
!MDLMenu categoriesFor: #initialize!initialization!public! !
!MDLMenu categoriesFor: #rippleEffect!options!public! !
!MDLMenu categoriesFor: #rippleEffectIf:!options!public! !
!MDLMenu categoriesFor: #topLeft!options!public! !
!MDLMenu categoriesFor: #topRight!options!public! !

