"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLAbstractPanelResizer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAbstractPanelResizer guid: (GUID fromString: '{0010ab10-c9e5-4e11-bde6-2ba007a7657d}')!
MDLAbstractPanelResizer comment: 'Description--------------------I am a simple component allowing to resize a panel of the window. '!
!MDLAbstractPanelResizer categoriesForClass!Material-Design-Lite-Extensions-Panels! !
!MDLAbstractPanelResizer methodsFor!

initMethodName	^ self subclassResponsibility!

panelClass	^ self subclassResponsibility!

renderContentOn: html	html div		class: self panelClass;		class: #resizer.	html document addLoadScript: self initMethodName js! !
!MDLAbstractPanelResizer categoriesFor: #initMethodName!accessing!public! !
!MDLAbstractPanelResizer categoriesFor: #panelClass!accessing!public! !
!MDLAbstractPanelResizer categoriesFor: #renderContentOn:!public!rendering! !

