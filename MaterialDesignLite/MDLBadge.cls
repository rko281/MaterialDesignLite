"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLBadge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLBadge guid: (GUID fromString: '{728ae4fb-241b-4c03-8ed7-ca61d82cc4e1}')!
MDLBadge comment: 'Description--------------------I am a brush to create small status descriptors for UI elements.Example--------------------	html mdlIconBadge		dataBadge: ''1'';		overlap;		with: ''account_box'''!
!MDLBadge categoriesForClass!Material-Design-Lite-Components-Badge! !
!MDLBadge methodsFor!

dataBadge: aString	"Assigns a value to the badge"		self attributeAt: 'data-badge' put: aString !

initialize	super initialize.	self class: 'mdl-badge'!

noBackground	"Applies open-circle effect to badge"		self class: 'mdl-badge--no-background'!

overlap	"Make the badge overlap with its container"		self class: 'mdl-badge--overlap'!

tag	^ 'span'! !
!MDLBadge categoriesFor: #dataBadge:!options!public! !
!MDLBadge categoriesFor: #initialize!initialization!public! !
!MDLBadge categoriesFor: #noBackground!options!public! !
!MDLBadge categoriesFor: #overlap!options!public! !
!MDLBadge categoriesFor: #tag!accessing!public! !

