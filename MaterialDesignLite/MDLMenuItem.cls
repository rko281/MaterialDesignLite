"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLMenuItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenuItem guid: (GUID fromString: '{a96bb7fc-7638-4fb2-a64b-5325089bd534}')!
MDLMenuItem comment: 'Description--------------------I am a brush to create a dropdown menu item.Example--------------------	html div		class: ''container'';		shadow: 2;		with: [ html div				class: ''bar'';				with: [ html mdlButton icon						id: #bottomLeftButton;						with: [ html mdlIcon: #more_vert ].					html mdlMenu						bottomLeft;						for: #bottomLeftButton;						with: [ html mdlMenuItem: ''Some Action''.							html mdlMenuItem								fullBleedDivider;								with: ''Another Action''.							html mdlMenuItem								disabled;								with: ''Disabled Action''.							html mdlMenuItem: ''Yet Another Action'' ] ].			html div class: ''background'' ]'!
!MDLMenuItem categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLMenuItem methodsFor!

disabled	self attributeAt: 'disabled' put: 'true'!

fullBleedDivider	self class: 'mdl-menu__item--full-bleed-divider'!

initialize	super initialize.	self class: 'mdl-menu__item'!

tag	^ 'li'! !
!MDLMenuItem categoriesFor: #disabled!options!public! !
!MDLMenuItem categoriesFor: #fullBleedDivider!options!public! !
!MDLMenuItem categoriesFor: #initialize!initialization!public! !
!MDLMenuItem categoriesFor: #tag!accessing!public! !

