"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLMenuButtonScreen
	instanceVariableNames: 'selectedUser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenuButtonScreen guid: (GUID fromString: '{24bb8596-3a3c-4e16-8241-8f72e647d169}')!
MDLMenuButtonScreen comment: 'Demo screen for the MDLMenuButtonWidget'!
!MDLMenuButtonScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLMenuButtonScreen methodsFor!

iconMenuButton	^ OrderedDictionary new		add: 'Menu Button with block content' -> #renderIconMenuButtonOn:;		yourself!

renderIconMenuButtonOn: html	html		render:			(MDLMenuButtonWidget new				objectsPossibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann');				buttonContent: [ :r | r mdlIcon: 'person' ];				yourself)!

renderMenuButtonOn: html	html		render:			((MDLMenuButtonWidget				possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')				label: #asString				action: [ :user | Transcript crShow: (selectedUser := user) ]				selectedObject: selectedUser				choosingText: 'Select an user'				description: 'Choose a user to log into the Transcript')				sortBlock: [ :a :b | a < b ];				yourself)!

renderScreenContentOn: html	self		render: self textMenuButton on: html;		render: self iconMenuButton on: html!

textMenuButton	^ OrderedDictionary new		add: 'Menu Button' -> #renderMenuButtonOn:;		yourself! !
!MDLMenuButtonScreen categoriesFor: #iconMenuButton!public!sections! !
!MDLMenuButtonScreen categoriesFor: #renderIconMenuButtonOn:!demos!public! !
!MDLMenuButtonScreen categoriesFor: #renderMenuButtonOn:!public!rendering! !
!MDLMenuButtonScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLMenuButtonScreen categoriesFor: #textMenuButton!public!sections! !

!MDLMenuButtonScreen class methodsFor!

description	^ 'A widget to create a button that expand to show a menu when clicked'!

icon	^ #compmenusPng!

title	^ 'Menu Button'! !
!MDLMenuButtonScreen class categoriesFor: #description!accessing!public! !
!MDLMenuButtonScreen class categoriesFor: #icon!accessing!public! !
!MDLMenuButtonScreen class categoriesFor: #title!accessing!public! !

