"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLCardTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTag guid: (GUID fromString: '{e8f81286-5603-4f92-8ca1-a1014f5483a6}')!
MDLCardTag comment: 'Description--------------------I am a brush to create a MDL card.Example--------------------	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: ''width: 256px; height: 256px; background: url('''''' , (MDLDemoLibrary urlOf: #imagecardJpg) asString , '''''') center / cover'';		with: [ 			html mdlCardTitle expand.						html mdlCardActions				style: ''height: 52px; padding: 16px; background: rgba(0,0,0,0.2)'';				with: [ html span						mdlTypographyFontBold;						style: ''color: #fff; font-size: 14px'';						with: ''Image.jpg'' ] ]'!
!MDLCardTag categoriesForClass!Material-Design-Lite-Components-Cards! !
!MDLCardTag methodsFor!

initialize	super initialize.	self class: 'mdl-card'! !
!MDLCardTag categoriesFor: #initialize!initialization!public! !

