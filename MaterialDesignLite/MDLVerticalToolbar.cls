"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLVerticalToolbar
	instanceVariableNames: 'buttons'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLVerticalToolbar guid: (GUID fromString: '{42e1e1dc-c231-480b-932a-b4b9dd52f205}')!
MDLVerticalToolbar comment: 'I am a component to display a vertical toolbar.Description-------------------I will stick to a panel and add some buttons with actions to act on a panel.For now I can only be added to the left of a panel but maybe in the future I can evolve to also stick to the right of a panel.Example------------------		html			render:				(MDLVerticalToolbar					buttons:						{(MDLFoldButton for: ''#my-browser-info'' callback: ''setTimeout(function(){console.log("callback");for(var i in visus){visus[i].visu.resize().center()}},800)'')						.						(MDLFoldButton for: ''#my-browser-info'' callback: ''setTimeout(function(){console.log("callback");for(var i in visus){visus[i].visu.resize().center()}},800)'')}). Internal Representation and Key Implementation Points.--------------------    Instance Variables	buttons:		<aCollection> 	A collection of components to show on the toolbar.'!
!MDLVerticalToolbar categoriesForClass!Material-Design-Lite-Extensions-Panels! !
!MDLVerticalToolbar methodsFor!

addAllButtons: aCollection	aCollection do: [ :each | self addButton: each ]!

addButton: aButton	self buttons add: aButton.	aButton owner: self!

buttons	^ buttons!

buttons: anObject	buttons := anObject!

children	^ self buttons!

initialize	super initialize.	self buttons: OrderedCollection new!

renderContentOn: html	html div		class: 'vertical-toolbar';		with: [ 					self buttons						do: [ :button | 							html div								class: 'vertical-toolbar__button';								with: [ html render: button ] ] ]!

resetButtonsSelection	self buttons do: [ :each | each isSelected: false ]! !
!MDLVerticalToolbar categoriesFor: #addAllButtons:!adding!public! !
!MDLVerticalToolbar categoriesFor: #addButton:!adding!public! !
!MDLVerticalToolbar categoriesFor: #buttons!accessing!public! !
!MDLVerticalToolbar categoriesFor: #buttons:!accessing!public! !
!MDLVerticalToolbar categoriesFor: #children!hooks!public! !
!MDLVerticalToolbar categoriesFor: #initialize!initialization!public! !
!MDLVerticalToolbar categoriesFor: #renderContentOn:!public!rendering! !
!MDLVerticalToolbar categoriesFor: #resetButtonsSelection!action!public! !

!MDLVerticalToolbar class methodsFor!

buttons: aCollection	^ self new		addAllButtons: aCollection;		yourself! !
!MDLVerticalToolbar class categoriesFor: #buttons:!instance creation!public! !

