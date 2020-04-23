"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLExpansionPanelScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelScreen guid: (GUID fromString: '{b29231c4-8d0b-4b44-9adf-0c293b217641}')!
MDLExpansionPanelScreen comment: 'An expansion panel allows one to show aggregated data that can be expanded to show full data.'!
!MDLExpansionPanelScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLExpansionPanelScreen methodsFor!

expansion	^ OrderedDictionary new		add: 'Expansion panel expanded' -> #renderExpansionOn:;		add: 'Expansion panel folded' -> #renderExpansionFoldedOn:;		yourself!

expansionMultipleDescriptions	^ OrderedDictionary new		add: 'With multiple descriptions' -> #renderMultipleDescriptionsOn:;		yourself!

renderExpansionFoldedOn: html	html mdlExpansionPanel		shadow: 2;		fold;		with: [ html mdlExpansionPanelHeader				toggleExpansionOnClick;				onClick: '	if($(this).parent().hasClass("isFolded")) {		$(this).find(".mdl-expansion-panel__header-icon").text("account_box");		$(this).find(".mdl-expansion-panel__header-description").text("I am folded");	}	else {		$(this).find(".mdl-expansion-panel__header-icon").text("account_circle");		$(this).find(".mdl-expansion-panel__header-description").text("I am unfolded");	}' js;				with: [ html mdlExpansionPanelHeaderTitle: 'Personal data'.					html mdlExpansionPanelHeaderDescription: 'I am folded'.					html mdlExpansionPanelHeaderIcon: 'account_box' ].			html				mdlExpansionPanelContent: [ html						mdlTextFieldContainer: [ html mdlTextFieldLabel								for: html nextId;								with: 'e.g. John Doe'.							html mdlTextFieldInput id: html lastId ] ] ]!

renderExpansionOn: html	html mdlExpansionPanel		shadow: 2;		expand; "Optional, this is the default."		with: [ html mdlExpansionPanelHeader				toggleExpansionOnClick;				with: [ html mdlExpansionPanelHeaderTitle: 'Personal data'.					html mdlExpansionPanelHeaderDescription: 'Type your name'.					html mdlExpansionPanelHeaderIcon ].			html				mdlExpansionPanelContent: [ html						mdlTextFieldContainer: [ html mdlTextFieldLabel								for: html nextId;								with: 'e.g. John Doe'.							html mdlTextFieldInput id: html lastId ] ] ]!

renderMultipleDescriptionsOn: html	html mdlExpansionPanel		shadow: 2;		fold;		with: [ html mdlExpansionPanelHeader				toggleExpansionOnClick;				with: [ html mdlExpansionPanelHeaderTitle: 'Start and end date'.					html mdlExpansionPanelHeaderDescription: 'Start date: Feb 29, 2016'.					html mdlExpansionPanelHeaderDescription: 'End date: Not set'.					html mdlExpansionPanelHeaderIcon ].			html				mdlExpansionPanelContent: [ html						mdlTextFieldContainer: [ html mdlTextFieldLabel								for: html nextId;								with: 'e.g. John Doe'.							html mdlTextFieldInput id: html lastId ] ] ]!

renderScreenContentOn: html	self		render: self expansion on: html;		render: self expansionMultipleDescriptions fullWidth: true on: html! !
!MDLExpansionPanelScreen categoriesFor: #expansion!public!sections! !
!MDLExpansionPanelScreen categoriesFor: #expansionMultipleDescriptions!public!sections! !
!MDLExpansionPanelScreen categoriesFor: #renderExpansionFoldedOn:!public!rendering! !
!MDLExpansionPanelScreen categoriesFor: #renderExpansionOn:!public!rendering! !
!MDLExpansionPanelScreen categoriesFor: #renderMultipleDescriptionsOn:!public!rendering! !
!MDLExpansionPanelScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLExpansionPanelScreen class methodsFor!

icon	^ #compexpansionPng!

title	^ 'Expansion Panel'! !
!MDLExpansionPanelScreen class categoriesFor: #icon!accessing!public! !
!MDLExpansionPanelScreen class categoriesFor: #title!accessing!public! !

