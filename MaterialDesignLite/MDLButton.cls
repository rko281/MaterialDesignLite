"Filed out from Dolphin Smalltalk 7"!

WAButtonTag subclass: #MDLButton
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLButton guid: (GUID fromString: '{979bdd45-a90f-4d66-87b1-cdaa3b810deb}')!
MDLButton comment: 'Description--------------------I am a brush to create MDL buttons.Example--------------------	html mdlButton		raised;		accentColor;		rippleEffect;		with: ''Button'''!
!MDLButton categoriesForClass!Material-Design-Lite-Components-Buttons! !
!MDLButton methodsFor!

accentColor	"With this option the button will have the color of the accent color of the application."		self class: 'mdl-button--accent'!

asLabel	tag := 'label'!

colored	"Applies colored display effect (primary or accent color, depending on the type of button)"		self class: 'mdl-button--colored'!

fab	"This option applies a `fab` effect. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."		self class: 'mdl-button--fab'!

for: anId	self attributeAt: 'for' put: anId!

icon	"Display a small circular button with an icon inside."		self class: 'mdl-button--icon'!

icon: aString	"Display a small circular button with an icon inside."		self		icon;		with: [ self canvas mdlIcon: aString ]!

initialize	super initialize.	self class: 'mdl-button'.	self class: 'mdl-js-button'.	tag := super tag!

labelIcon	self		asLabel;		icon!

labelIcon: aString	self		asLabel;		icon: aString!

miniFab	"This option applies a `fab` effect with small margins. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."		self class: 'mdl-button--mini-fab'!

primaryColor	"With this option the button will have the color of the primary color of the application."		self class: 'mdl-button--primary'!

raised	"This will apply a `raised` effect to the button. It will add an elevation."		self class: 'mdl-button--raised'!

resetType	"By default the type will be `submit`. This option remove the type."		type := nil!

rippleEffect	"With this option, when clicked, the button will display a ripple-like effect on the button."		self class: 'mdl-js-ripple-effect'!

tag	^ tag! !
!MDLButton categoriesFor: #accentColor!options!public! !
!MDLButton categoriesFor: #asLabel!converting!public! !
!MDLButton categoriesFor: #colored!options!public! !
!MDLButton categoriesFor: #fab!options!public! !
!MDLButton categoriesFor: #for:!attributes!public! !
!MDLButton categoriesFor: #icon!options!public! !
!MDLButton categoriesFor: #icon:!options!public! !
!MDLButton categoriesFor: #initialize!initialization!public! !
!MDLButton categoriesFor: #labelIcon!options!public! !
!MDLButton categoriesFor: #labelIcon:!options!public! !
!MDLButton categoriesFor: #miniFab!options!public! !
!MDLButton categoriesFor: #primaryColor!options!public! !
!MDLButton categoriesFor: #raised!options!public! !
!MDLButton categoriesFor: #resetType!options!public! !
!MDLButton categoriesFor: #rippleEffect!options!public! !
!MDLButton categoriesFor: #tag!accessing!public! !

