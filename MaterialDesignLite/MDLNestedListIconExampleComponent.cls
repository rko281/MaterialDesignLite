"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLNestedListIconExampleComponent
	instanceVariableNames: 'isRepresentingClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNestedListIconExampleComponent guid: (GUID fromString: '{12ff63b2-b1bb-445a-94af-68b5d33b802e}')!
MDLNestedListIconExampleComponent comment: 'Description--------------------Utility component to illustrate the nested list icon displaying..'!
!MDLNestedListIconExampleComponent categoriesForClass!Material-Design-Lite-Demo-Utils! !
!MDLNestedListIconExampleComponent methodsFor!

isRepresentingClass	^ isRepresentingClass!

isRepresentingClass: anObject	isRepresentingClass := anObject!

renderContentOn: html	html		mdlIcon:			(self isRepresentingClass				ifTrue: [ 'copyright' ]				ifFalse: [ 'label_outline' ]).	html text: '  '! !
!MDLNestedListIconExampleComponent categoriesFor: #isRepresentingClass!accessing!public! !
!MDLNestedListIconExampleComponent categoriesFor: #isRepresentingClass:!accessing!public! !
!MDLNestedListIconExampleComponent categoriesFor: #renderContentOn:!public!rendering! !

!MDLNestedListIconExampleComponent class methodsFor!

isRepresentingClass: aBoolean	^ self new		isRepresentingClass: aBoolean;		yourself! !
!MDLNestedListIconExampleComponent class categoriesFor: #isRepresentingClass:!instance creation!public! !

