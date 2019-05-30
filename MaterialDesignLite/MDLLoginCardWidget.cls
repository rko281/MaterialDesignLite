"Filed out from Dolphin Smalltalk 7"!

MDLLoginWidget subclass: #MDLLoginCardWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLoginCardWidget guid: (GUID fromString: '{9679c433-e40d-4d53-a9ab-36f07af6f311}')!
MDLLoginCardWidget comment: 'I''m a login widget render in a card widget'!
!MDLLoginCardWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLLoginCardWidget methodsFor!

renderContentOn: html	html		render:			(MDLCardWidget new				shadow: 2;				class: 'mdl-card__login-widget';				class: self htmlClass;				title: titleLabel level: titleLevel;				addTextContainer: [ :canvas | super renderContentOn: canvas ];				yourself)! !
!MDLLoginCardWidget categoriesFor: #renderContentOn:!public!rendering! !

