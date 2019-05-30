"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLContentCenterer
	instanceVariableNames: 'component desktopSize tabletSize phoneSize'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLContentCenterer guid: (GUID fromString: '{5a9bbd24-2e1c-421a-933a-a7b2a502816b}')!
MDLContentCenterer comment: 'Just a widget that allow to center a component and specify its size'!
!MDLContentCenterer categoriesForClass!Material-Design-Lite-Widgets! !
!MDLContentCenterer methodsFor!

component	^ component!

component: anObject	component := anObject!

desktopSize	^ desktopSize!

desktopSize: anObject	desktopSize := anObject!

phoneSize	^ phoneSize!

phoneSize: anObject	phoneSize := anObject!

renderContentOn: html	html mdlGrid: [ 		html mdlLayoutSpacer.		html mdlCellDesktop: desktopSize tablet: tabletSize phone: phoneSize with: component.		html mdlLayoutSpacer ].	super renderContentOn: html!

size: anObject	self desktopSize: anObject.	self phoneSize: anObject.	self tabletSize: anObject!

tabletSize	^ tabletSize!

tabletSize: anObject	tabletSize := anObject! !
!MDLContentCenterer categoriesFor: #component!accessing!public! !
!MDLContentCenterer categoriesFor: #component:!accessing!public! !
!MDLContentCenterer categoriesFor: #desktopSize!accessing!public! !
!MDLContentCenterer categoriesFor: #desktopSize:!accessing!public! !
!MDLContentCenterer categoriesFor: #phoneSize!accessing!public! !
!MDLContentCenterer categoriesFor: #phoneSize:!accessing!public! !
!MDLContentCenterer categoriesFor: #renderContentOn:!public!rendering! !
!MDLContentCenterer categoriesFor: #size:!accessing!public! !
!MDLContentCenterer categoriesFor: #tabletSize!accessing!public! !
!MDLContentCenterer categoriesFor: #tabletSize:!accessing!public! !

