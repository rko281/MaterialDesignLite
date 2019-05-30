"Filed out from Dolphin Smalltalk 7"!

Trait subclass: #TMDLButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TMDLButton guid: (GUID fromString: '{faa9e064-e32c-46e6-b660-ab6aea437ad4}')!
TMDLButton comment: 'Description--------------------I am a Trait defining the possible options for Material Design button like brushes.'!
!TMDLButton categoriesForClass!Unclassified! !
!TMDLButton methodsFor!

accentColor	"With this option the button will have the color of the accent color of the application."		self class: 'mdl-button--accent'!

colored	"Applies colored display effect (primary or accent color, depending on the type of button)"		self class: 'mdl-button--colored'!

fab	"This option applies a `fab` effect. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."		self class: 'mdl-button--fab'!

for: anId	self attributeAt: 'for' put: anId!

icon	"Display a small circular button with an icon inside."		self class: 'mdl-button--icon'!

icon: aString	"Display a small circular button with an icon inside."		self		icon;		with: [ self canvas mdlIcon: aString ]!

miniFab	"This option applies a `fab` effect with small margins. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."		self class: 'mdl-button--mini-fab'!

primaryColor	"With this option the button will have the color of the primary color of the application."		self class: 'mdl-button--primary'!

raised	"This will apply a `raised` effect to the button. It will add an elevation."		self class: 'mdl-button--raised'!

rippleEffect	"With this option, when clicked, the button will display a ripple-like effect on the button."		self class: 'mdl-js-ripple-effect'! !
!TMDLButton categoriesFor: #accentColor!options!public! !
!TMDLButton categoriesFor: #colored!options!public! !
!TMDLButton categoriesFor: #fab!options!public! !
!TMDLButton categoriesFor: #for:!attributes!public! !
!TMDLButton categoriesFor: #icon!options!public! !
!TMDLButton categoriesFor: #icon:!options!public! !
!TMDLButton categoriesFor: #miniFab!options!public! !
!TMDLButton categoriesFor: #primaryColor!options!public! !
!TMDLButton categoriesFor: #raised!options!public! !
!TMDLButton categoriesFor: #rippleEffect!options!public! !

