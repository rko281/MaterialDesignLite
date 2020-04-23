"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLExpansionPanelWidgetScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelWidgetScreen guid: (GUID fromString: '{1eb16393-38be-4f55-8a47-cddfaca2e10f}')!
MDLExpansionPanelWidgetScreen comment: 'Implementation of expansion panel for MDL.'!
!MDLExpansionPanelWidgetScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLExpansionPanelWidgetScreen methodsFor!

ajaxExpansionPanel	^ OrderedDictionary new		add: 'Expansion panel loading via ajax initially folded.' -> #renderExpansionPanelWithAjaxStrategyOn:;		add: 'Expansion panel loading via ajax initially expanded.' -> #renderExpansionPanelWithAjaxStrategyInitiallyExpandedOn:;		yourself!

basicExpansionPanel	^ OrderedDictionary new		add: 'Basic expansion panel initially folded' -> #renderBasicExpansionPanelFoldedOn:;		add: 'Basic expansion panel initially expanded' -> #renderBasicExpansionPanelExpandedOn:;		yourself!

expansionMultipleDescriptions	^ OrderedDictionary new		add: 'With multiple descriptions' -> #renderMultipleDescriptionsOn:;		yourself!

lazyExpansionPanel	^ OrderedDictionary new		add: 'Expansion panel loading lazily initially folded.' -> #renderExpansionPanelWithLazyStrategyOn:;		add: 'Expansion panel loading lazily initially expanded.' -> #renderExpansionPanelWithLazyStrategyInitiallyExpandedOn:;		yourself!

renderBasicExpansionPanelExpandedOn: html	html div		style: 'width: 400px';		with: [ html				render:					(MDLExpansionPanel new						title: 'Personal data';						description: 'Type your name';						expandedBlock: [ :htmlCanvas | 							html								mdlTextFieldContainer: [ html mdlTextFieldLabel										for: html nextId;										with: 'e.g. John Doe'.									html mdlTextFieldInput id: html lastId ] ];						isExpanded: true;						yourself) ]!

renderBasicExpansionPanelFoldedOn: html	html div		style: 'width: 400px';		with: [ html				render:					(MDLExpansionPanel new						title: 'Personal data';						description: 'Type your name';						expandedBlock: [ :htmlCanvas | 							html								mdlTextFieldContainer: [ html mdlTextFieldLabel										for: html nextId;										with: 'e.g. John Doe'.									html mdlTextFieldInput id: html lastId ] ];						isExpanded: false;						yourself) ]!

renderExpansionPanelWithAjaxStrategyInitiallyExpandedOn: html	| counter |	counter := 0.	html div		style: 'width: 400px';		with: [ html				render:					(MDLExpansionPanel new						title: 'Personal data';						description: 'Type your name';						useAjaxExpansionStrategy;						expandedBlock: [ :htmlCanvas | 							html text: 'Panel expanded ' , counter asString , ' times'.							html								mdlTextFieldContainer: [ html mdlTextFieldLabel										for: html nextId;										with: 'e.g. John Doe'.									html mdlTextFieldInput id: html lastId ].							counter := counter + 1 ];						isExpanded: true;						yourself) ]!

renderExpansionPanelWithAjaxStrategyOn: html	| counter |	counter := 0.	html div		style: 'width: 400px';		with: [ html				render:					(MDLExpansionPanel new						title: 'Personal data';						description: 'Type your name';						useAjaxExpansionStrategy;						expandedBlock: [ :htmlCanvas | 							counter := counter + 1.							html text: 'Panel expanded ' , counter asString , ' times'.							html								mdlTextFieldContainer: [ html mdlTextFieldLabel										for: html nextId;										with: 'e.g. John Doe'.									html mdlTextFieldInput id: html lastId ] ];						yourself) ]!

renderExpansionPanelWithLazyStrategyInitiallyExpandedOn: html	html div		style: 'width: 400px';		with: [ html				render:					(MDLExpansionPanel new						title: 'Personal data';						description: 'Type your name';						useLazyExpansionStrategy;						expandedBlock: [ :htmlCanvas |							html								mdlTextFieldContainer: [ html mdlTextFieldLabel										for: html nextId;										with: 'e.g. John Doe'.									html mdlTextFieldInput id: html lastId ] ];						isExpanded: true;						yourself) ]!

renderExpansionPanelWithLazyStrategyOn: html	html div		style: 'width: 400px';		with: [ html				render:					(MDLExpansionPanel new						title: 'Personal data';						description: 'Type your name';						useLazyExpansionStrategy;						expandedBlock: [ :htmlCanvas |							html								mdlTextFieldContainer: [ html mdlTextFieldLabel										for: html nextId;										with: 'e.g. John Doe'.									html mdlTextFieldInput id: html lastId ] ];						yourself) ]!

renderMultipleDescriptionsOn: html	html		render:			(MDLExpansionPanel new				title: 'Start and End dates';				descriptions: {'Start date: Feb 29, 2016' . 'End date: Not set'};				expandedBlock: [ :htmlCanvas | 					html						mdlTextFieldContainer: [ html mdlTextFieldLabel								for: html nextId;								with: 'e.g. John Doe'.							html mdlTextFieldInput id: html lastId ] ];				isExpanded: false;				yourself)!

renderScreenContentOn: html	self		render: self basicExpansionPanel on: html;		render: self lazyExpansionPanel on: html;		render: self ajaxExpansionPanel on: html;		render: self expansionMultipleDescriptions fullWidth: true on: html! !
!MDLExpansionPanelWidgetScreen categoriesFor: #ajaxExpansionPanel!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #basicExpansionPanel!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #expansionMultipleDescriptions!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #lazyExpansionPanel!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderBasicExpansionPanelExpandedOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderBasicExpansionPanelFoldedOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderExpansionPanelWithAjaxStrategyInitiallyExpandedOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderExpansionPanelWithAjaxStrategyOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderExpansionPanelWithLazyStrategyInitiallyExpandedOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderExpansionPanelWithLazyStrategyOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderMultipleDescriptionsOn:!demos!public! !
!MDLExpansionPanelWidgetScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLExpansionPanelWidgetScreen class methodsFor!

icon	^ #compexpansionPng!

title	^ 'Expansion Panel'! !
!MDLExpansionPanelWidgetScreen class categoriesFor: #icon!accessing!public! !
!MDLExpansionPanelWidgetScreen class categoriesFor: #title!accessing!public! !

