"Filed out from Dolphin Smalltalk 7"!

WAAnchorTag subclass: #MDLAnchorButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAnchorButton guid: (GUID fromString: '{54cbcf2b-0328-41ca-9daf-772670637433}')!
MDLAnchorButton comment: 'Description--------------------I am a brush to create MDL anchor buttons.Example--------------------	html mdlAnchorButton		callback: [ ''Test'' crLog ];		raised;		accentColor;		rippleEffect;		with: ''Button'' '!
!MDLAnchorButton categoriesForClass!Material-Design-Lite-Components-Buttons! !
!MDLAnchorButton methodsFor!

accentColor	"With this option the button will have the color of the accent color of the application."		self class: 'mdl-button--accent'!

colored	"Applies colored display effect (primary or accent color, depending on the type of button)"		self class: 'mdl-button--colored'!

fab	"This option applies a `fab` effect. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."		self class: 'mdl-button--fab'!

for: anId	self attributeAt: 'for' put: anId!

icon	"Display a small circular button with an icon inside."		self class: 'mdl-button--icon'!

icon: aString	"Display a small circular button with an icon inside."		self		icon;		with: [ self canvas mdlIcon: aString ]!

initialize	super initialize.	self class: 'mdl-button'.	self class: 'mdl-js-button'.	!

miniFab	"This option applies a `fab` effect with small margins. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."		self class: 'mdl-button--mini-fab'!

primaryColor	"With this option the button will have the color of the primary color of the application."		self class: 'mdl-button--primary'!

raised	"This will apply a `raised` effect to the button. It will add an elevation."		self class: 'mdl-button--raised'!

rippleEffect	"With this option, when clicked, the button will display a ripple-like effect on the button."		self class: 'mdl-js-ripple-effect'! !
!MDLAnchorButton categoriesFor: #accentColor!options!public! !
!MDLAnchorButton categoriesFor: #colored!options!public! !
!MDLAnchorButton categoriesFor: #fab!options!public! !
!MDLAnchorButton categoriesFor: #for:!attributes!public! !
!MDLAnchorButton categoriesFor: #icon!options!public! !
!MDLAnchorButton categoriesFor: #icon:!options!public! !
!MDLAnchorButton categoriesFor: #initialize!initialization!public! !
!MDLAnchorButton categoriesFor: #miniFab!options!public! !
!MDLAnchorButton categoriesFor: #primaryColor!options!public! !
!MDLAnchorButton categoriesFor: #raised!options!public! !
!MDLAnchorButton categoriesFor: #rippleEffect!options!public! !

