"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLTypographyScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTypographyScreen guid: (GUID fromString: '{319d09a2-0aa1-4283-aed7-4271ad075e01}')!
MDLTypographyScreen comment: 'Predefined typographies'!
!MDLTypographyScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLTypographyScreen methodsFor!

backgroundColorOptions	^ OrderedDictionary with: 'Background color options' -> #renderBackgroundColorOptionsOn:!

fontOptions	^ OrderedDictionary with: 'Font options' -> #renderFontOptionsOn:!

renderBackgroundColorOptionsOn: html	html div		mdlTypographyTextJustify;		style: 'color: white; width: 400px;';		with:				[ #('primary' 'primary-Dark' 'accent')				do: [ :each | 					| selector |					selector := ('mdlBackgroundColor' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlBackgroundColorPrimaryDark`"					html div						style: 'margin: 10px 0;';						perform: selector;						with: each asLowercase capitalized ] ]!

renderFontOptionsOn: html	html div		mdlTypographyTextJustify;		mdlTypographyBody2;		style: 'width: 400px;';		with: [ #('thin' 'light' 'regular' 'medium' 'bold' 'black')				do: [ :each | 					| selector |					selector := ('mdlTypographyFont' , each capitalized) asSymbol.	"For example `#mdlTypographyFontThin`"					html div						perform: selector;						with: 'This is am example with the font option: ' , each ] ]!

renderScreenContentOn: html	self		render: self typographies on: html;		render: self fontOptions on: html;		render: self textOptions on: html;		render: self backgroundColorOptions on: html;		render: self textColorOptions on: html!

renderTextColorOptionsOn: html	html div		mdlTypographyTextJustify;		with:				[ #('primary' 'primary-Dark' 'accent')				do: [ :each | 					| selector |					selector := ('mdlTextColor' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlTextColorPrimaryDark`"					html div						style: 'margin: 10px 0;';						perform: selector;						with: each asLowercase capitalized ] ]!

renderTextOptionsOn: html	html div		mdlTypographyTextJustify;		mdlTypographyBody1;		with: [ #('left' 'right' 'center' 'justify' 'nowrap' 'lowercase' 'uppercase' 'capitalize')				do: [ :each | 					| selector |					selector := ('mdlTypographyText' , each capitalized) asSymbol.	"For example `#mdlTypographyTextLeft`"					html div						perform: selector;						with: 'This is am example with the text option: ' , each ] ]!

renderTypographiesOn: html	html div		mdlTypographyTextJustify;		with:				[ #('display-4' 'display-3' 'display-2' 'display-1' 'headline' 'title' 'subhead' 'body-2' 'body-1' 'body-2-Force-Preferred-Font' 'body-1-Force-Preferred-Font' 'caption' 'caption-Force-Preferred-Font' 'menu' 'button')				do: [ :each | 					| selector |					selector := ('mdlTypography' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlTypographyCaptionForcePreferredFont`"					html div						style: 'margin: 10px 0;';						perform: selector;						with: each asLowercase capitalized ] ]!

renderTypographiesWithContrastOn: html	html div		mdlTypographyTextJustify;		with:				[ #('display-4' 'display-3' 'display-2' 'display-1' 'headline' 'title' 'subhead' 'body-2' 'body-1' 'body-2-Force-Preferred-Font' 'body-1-Force-Preferred-Font' 'caption' 'caption-Force-Preferred-Font' 'menu' 'button')				do: [ :each | 					| selector |					selector := ('mdlTypography' , (each capitalized copyReplaceAll: '-' with: '' ), 'ColorContrast') asSymbol.	"For example `#mdlTypographyCaptionForcePreferredFontColorContrast`"					html div						style: 'margin: 10px 0;';						perform: selector;						with: each asLowercase capitalized ] ]!

textColorOptions	^ OrderedDictionary with: 'Text color options' -> #renderTextColorOptionsOn:!

textOptions	^ OrderedDictionary with: 'Text options' -> #renderTextOptionsOn:!

typographies	^ OrderedDictionary with: 'Typographies' -> #renderTypographiesOn: with: 'Color contrast' -> #renderTypographiesWithContrastOn:! !
!MDLTypographyScreen categoriesFor: #backgroundColorOptions!public!sections! !
!MDLTypographyScreen categoriesFor: #fontOptions!public!sections! !
!MDLTypographyScreen categoriesFor: #renderBackgroundColorOptionsOn:!demos!public! !
!MDLTypographyScreen categoriesFor: #renderFontOptionsOn:!demos!public! !
!MDLTypographyScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLTypographyScreen categoriesFor: #renderTextColorOptionsOn:!demos!public! !
!MDLTypographyScreen categoriesFor: #renderTextOptionsOn:!demos!public! !
!MDLTypographyScreen categoriesFor: #renderTypographiesOn:!demos!public! !
!MDLTypographyScreen categoriesFor: #renderTypographiesWithContrastOn:!demos!public! !
!MDLTypographyScreen categoriesFor: #textColorOptions!public!sections! !
!MDLTypographyScreen categoriesFor: #textOptions!public!sections! !
!MDLTypographyScreen categoriesFor: #typographies!public!sections! !

!MDLTypographyScreen class methodsFor!

icon	^ 'compTypoPng'!

title	^ 'Typography'! !
!MDLTypographyScreen class categoriesFor: #icon!accessing!public! !
!MDLTypographyScreen class categoriesFor: #title!accessing!public! !

