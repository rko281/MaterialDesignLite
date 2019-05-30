"Filed out from Dolphin Smalltalk 7"!

MDLFooterAbstractSection subclass: #MDLFooterComponentsSection
	instanceVariableNames: 'components'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLFooterComponentsSection guid: (GUID fromString: '{67ab5a42-5400-4c54-be09-20723edccdcd}')!
MDLFooterComponentsSection comment: ''!
!MDLFooterComponentsSection categoriesForClass!Material-Design-Lite-Widgets-Footer! !
!MDLFooterComponentsSection methodsFor!

addComponents: aComponentsCollection	components := aComponentsCollection !

renderSectionOn: html	components do: [ :aComponent | html render: aComponent ]! !
!MDLFooterComponentsSection categoriesFor: #addComponents:!adding!public! !
!MDLFooterComponentsSection categoriesFor: #renderSectionOn:!public!rendering! !

