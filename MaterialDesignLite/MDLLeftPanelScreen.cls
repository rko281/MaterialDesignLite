"Filed out from Dolphin Smalltalk 7"!

MDLExtensionsDemo subclass: #MDLLeftPanelScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLeftPanelScreen guid: (GUID fromString: '{f137bcbf-148f-4870-9680-6a818291f9f8}')!
MDLLeftPanelScreen comment: 'Simple component to add a resizable left panel to a browser'!
!MDLLeftPanelScreen categoriesForClass!Material-Design-Lite-Demo-Extensions! !
!MDLLeftPanelScreen methodsFor!

leftPanel	^ OrderedDictionary new		add: 'Left panel' -> #renderLeftPanelOn:;		yourself!

leftPanelWithResizer	^ OrderedDictionary new		add: 'Left panel with resizer' -> #renderLeftPanelWithResizerOn:;		yourself!

renderLeftPanelOn: html	html div		shadow: 2;		style: 'height: 300px; display: flex;';		with: [ html leftPanel				style: 'height: 100%; width: 300px;';				with:					((MDLNestedList						elements: WAObject allSubclasses						children: [ :classOrMethod | 					classOrMethod isClass						ifTrue: [ classOrMethod methods ]						ifFalse: [ #() ] ])						format: #name;						yourself).			html div style: 'background-color: #ECEFF1; flex-grow: 1;' ]!

renderLeftPanelWithResizerOn: html	html div		shadow: 2;		style: 'height: 300px; display: flex;';		with: [ html leftPanel				style: 'height: 100%; width: 300px;';				with: [ html						render:							((MDLNestedList								elements: WAObject allSubclasses								children: [ :classOrMethod | 							classOrMethod isClass								ifTrue: [ classOrMethod methods ]								ifFalse: [ #() ] ])								format: #name;								yourself);						leftPanelResizer ].			html div style: 'background-color: #ECEFF1; flex-grow: 1;' ]!

renderScreenContentOn: html	self		render: self leftPanel fullWidth: true on: html;		render: self leftPanelWithResizer fullWidth: true on: html! !
!MDLLeftPanelScreen categoriesFor: #leftPanel!public!sections! !
!MDLLeftPanelScreen categoriesFor: #leftPanelWithResizer!public!sections! !
!MDLLeftPanelScreen categoriesFor: #renderLeftPanelOn:!demos!public! !
!MDLLeftPanelScreen categoriesFor: #renderLeftPanelWithResizerOn:!demos!public! !
!MDLLeftPanelScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLLeftPanelScreen class methodsFor!

icon	^ 'extLeftPanelPng'!

title	^ 'Left panel'! !
!MDLLeftPanelScreen class categoriesFor: #icon!accessing!public! !
!MDLLeftPanelScreen class categoriesFor: #title!accessing!public! !

