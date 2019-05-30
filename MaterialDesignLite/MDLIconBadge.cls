"Filed out from Dolphin Smalltalk 7"!

MDLBadge subclass: #MDLIconBadge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconBadge guid: (GUID fromString: '{c816f9e2-75b3-4abb-a986-e4d9fed15f72}')!
MDLIconBadge comment: 'Description--------------------I am a brush to create small status descriptors for UI elements with an icon.Example--------------------	html mdlIconBadge		dataBadge: (Character codePoint: 9829) asString;		overlap;		with: ''account_box''	'!
!MDLIconBadge categoriesForClass!Material-Design-Lite-Components-Badge! !
!MDLIconBadge methodsFor!

initialize	super initialize.	self class: 'material-icons'!

tag	^ 'div'! !
!MDLIconBadge categoriesFor: #initialize!initialize/release!public! !
!MDLIconBadge categoriesFor: #tag!accessing!public! !

