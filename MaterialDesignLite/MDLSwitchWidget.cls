"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLSwitchWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitchWidget guid: (GUID fromString: '{91f368d1-ce63-440b-b330-ff06f4e3e738}')!
MDLSwitchWidget comment: ''!
!MDLSwitchWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLSwitchWidget methodsFor!

renderContentOn: html	html div 		style: 'width: 28px;';		with: [			html mdlSwitchContainer for: (self id); with: [ 				html mdlSwitch id: (self id); value: self value.				html mdlSwitchLabel  			]  		]! !
!MDLSwitchWidget categoriesFor: #renderContentOn:!public!rendering! !

