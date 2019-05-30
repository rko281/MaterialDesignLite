"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLNavigationLinkWithIconComponent
	instanceVariableNames: 'icon label callback iconUrl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNavigationLinkWithIconComponent guid: (GUID fromString: '{296b33e1-5c42-46b1-ab75-06410cbba9ff}')!
MDLNavigationLinkWithIconComponent comment: ''!
!MDLNavigationLinkWithIconComponent categoriesForClass!Material-Design-Lite-Widgets! !
!MDLNavigationLinkWithIconComponent methodsFor!

callback	^ callback!

callback: anObject	callback := anObject!

icon	^ icon!

iconUrl: anObject	iconUrl := anObject!

label	^ label!

label: anObject	label := anObject!

renderContentOn: html	html mdlNavigationLink		style: 'margin: 8px 16px';		callback: callback;		with: [ html				div: [ html image						url: (iconUrl);"						url: (MDLDemoLibrary urlOf: icon);"						style: 'height: 46px; width: 46px; margin: 0px 10px;'.					html span: label ] ]! !
!MDLNavigationLinkWithIconComponent categoriesFor: #callback!accessing!public! !
!MDLNavigationLinkWithIconComponent categoriesFor: #callback:!accessing!public! !
!MDLNavigationLinkWithIconComponent categoriesFor: #icon!accessing!public! !
!MDLNavigationLinkWithIconComponent categoriesFor: #iconUrl:!accessing!public! !
!MDLNavigationLinkWithIconComponent categoriesFor: #label!accessing!public! !
!MDLNavigationLinkWithIconComponent categoriesFor: #label:!accessing!public! !
!MDLNavigationLinkWithIconComponent categoriesFor: #renderContentOn:!public!rendering! !

