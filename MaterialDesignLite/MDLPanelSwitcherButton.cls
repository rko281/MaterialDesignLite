"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLPanelSwitcherButton
	instanceVariableNames: 'panelId text actionBlock tooltip onCompleteJs id owner isSelected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPanelSwitcherButton guid: (GUID fromString: '{5b2f6d83-6f8a-4b86-91cd-1a38953f8159}')!
MDLPanelSwitcherButton comment: 'I am a button use to change the content of a panel.Description-------------------Sometimes we show contents inside a panel but we want to change. This button is here to do that. I was designed at the beginning for the code analyzer but can evolve.I should probably be use inside a MDLVerticalToolbar. Example--------------------	MDLPanelSwitcherButton		text: ''Tags''		tooltip: ''Show the Tag panel''		panelId: #''my-browser-right-panel''		actionBlock: [ :r | 			self setTagPanel.			self renderRightPanelOn: r ]		onComplete: ''var button = $(".fold-button"); if(button.attr("data-fold") == "true"){button.click()}'' Internal Representation and Key Implementation Points.--------------------    Instance Variables	actionBlock:			<aBlock>	I am a block taking a canvas as parameter. I should draw the content on the panel on this canvas.	onCompleteJs:		<aString>	I am an optional script to add after the redraw is done.	panelId:				<aSymbol>	I am the dom id of the panel to redraw.	text:				<aString>	I am the text to display on the button.	tooltip:				<aString>	I am an optional tooltip.'!
!MDLPanelSwitcherButton categoriesForClass!Material-Design-Lite-Extensions-Panels! !
!MDLPanelSwitcherButton methodsFor!

actionBlock	^ actionBlock!

actionBlock: anObject	actionBlock := anObject!

id	^ id!

id: anObject	id := anObject!

initialize	super initialize.	self isSelected: false!

isSelected	^ isSelected!

isSelected: aBoolean 	isSelected := aBoolean !

jsOnComplete	^ self onCompleteJs ifNotNil: [ :script | script js ]!

onCompleteJs	^ onCompleteJs!

onCompleteJs: anObject	onCompleteJs := anObject!

owner	^ owner!

owner: aSYNVerticalToolbar 	owner := aSYNVerticalToolbar!

panelId	^ panelId!

panelId: anObject	panelId := anObject!

renderContentOn: html	html div		class: 'panel-switcher-button';		id: self id;		with: [ html div				id: html nextId;				class: 'panel-switcher-button__content';				class: 'panel-switcher-selected' if: self isSelected;				onClick:					'$(".panel-switcher-selected").removeClass("panel-switcher-selected"); $(this).addClass("panel-switcher-selected")'						js						,							((html jQuery id: self panelId) load								html: [ :r | 									self owner resetButtonsSelection.									self select.									self actionBlock value: r ];								onComplete: self jsOnComplete);				with: self text ].	self renderTooltipFor: html lastId on: html!

renderTooltipFor: anId on: html	self tooltip ifNil: [ ^ self ].		html mdlTooltip		large;		for: anId;		with: self tooltip!

select	self isSelected: true!

text	^ text!

text: anObject	text := anObject!

tooltip	^ tooltip!

tooltip: anObject	tooltip := anObject! !
!MDLPanelSwitcherButton categoriesFor: #actionBlock!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #actionBlock:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #id!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #id:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #initialize!initialization!public! !
!MDLPanelSwitcherButton categoriesFor: #isSelected!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #isSelected:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #jsOnComplete!javascript!public! !
!MDLPanelSwitcherButton categoriesFor: #onCompleteJs!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #onCompleteJs:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #owner!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #owner:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #panelId!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #panelId:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #renderContentOn:!public!rendering! !
!MDLPanelSwitcherButton categoriesFor: #renderTooltipFor:on:!public!rendering! !
!MDLPanelSwitcherButton categoriesFor: #select!options!public! !
!MDLPanelSwitcherButton categoriesFor: #text!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #text:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #tooltip!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #tooltip:!accessing!public! !

!MDLPanelSwitcherButton class methodsFor!

text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock	^ self		text: aString		tooltip: aTranslatedString		panelId: anId		actionBlock: aBlock		onComplete: nil!

text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString	^ self		text: aString		tooltip: aTranslatedString		panelId: anId		actionBlock: aBlock		onComplete: aJSString		id: nil!

text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString id:  anIdBis	^ self new		text: aString;		id: anIdBis;		tooltip: aTranslatedString;		panelId: anId;		actionBlock: aBlock;		onCompleteJs: aJSString;		yourself! !
!MDLPanelSwitcherButton class categoriesFor: #text:tooltip:panelId:actionBlock:!instance creation!public! !
!MDLPanelSwitcherButton class categoriesFor: #text:tooltip:panelId:actionBlock:onComplete:!instance creation!public! !
!MDLPanelSwitcherButton class categoriesFor: #text:tooltip:panelId:actionBlock:onComplete:id:!instance creation!public! !

