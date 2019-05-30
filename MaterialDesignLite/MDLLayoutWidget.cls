"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLLayoutWidget
	instanceVariableNames: 'title icon headerSection drawerSection contentBlock brush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutWidget guid: (GUID fromString: '{f07c18ac-42d0-43a2-b497-1a55d1ba27a2}')!
MDLLayoutWidget comment: ''!
!MDLLayoutWidget categoriesForClass!Material-Design-Lite-Widgets-Header! !
!MDLLayoutWidget methodsFor!

contentBlock	^ contentBlock!

contentBlock: anObject	contentBlock := anObject!

drawerSection	^ drawerSection!

drawerSection: anObject	anObject layout: self.	drawerSection := anObject!

fixedDrawer	^ brush fixedDrawer !

fixedHeader	^ brush fixedHeader !

fixedTabs	^ brush fixedTabs !

headerSection	^ headerSection!

headerSection: anObject	anObject layout: self.	headerSection := anObject!

icon	^ icon!

icon: anObject	icon := anObject!

initialize	super initialize.	title := 'Define a title'.	icon := MDLIconComponent new.	headerSection := MDLNilLayoutSection new.	drawerSection := MDLNilLayoutSection new.	contentBlock := [ ].	brush := MDLLayout new. !

noDesktopDrawerButton	^ brush noDesktopDrawerButton !

noDrawerButton	^ brush noDrawerButton !

renderContentOn: html	(html brush: brush)		with: [ 			html render: headerSection.			html render: drawerSection.			html mdlLayoutContent: contentBlock ].!

title	^ title!

title: anObject	title := anObject! !
!MDLLayoutWidget categoriesFor: #contentBlock!accessing!public! !
!MDLLayoutWidget categoriesFor: #contentBlock:!accessing!public! !
!MDLLayoutWidget categoriesFor: #drawerSection!accessing!public! !
!MDLLayoutWidget categoriesFor: #drawerSection:!accessing!public! !
!MDLLayoutWidget categoriesFor: #fixedDrawer!options!public! !
!MDLLayoutWidget categoriesFor: #fixedHeader!options!public! !
!MDLLayoutWidget categoriesFor: #fixedTabs!options!public! !
!MDLLayoutWidget categoriesFor: #headerSection!accessing!public! !
!MDLLayoutWidget categoriesFor: #headerSection:!accessing!public! !
!MDLLayoutWidget categoriesFor: #icon!accessing!public! !
!MDLLayoutWidget categoriesFor: #icon:!accessing!public! !
!MDLLayoutWidget categoriesFor: #initialize!initialization!public! !
!MDLLayoutWidget categoriesFor: #noDesktopDrawerButton!options!public! !
!MDLLayoutWidget categoriesFor: #noDrawerButton!options!public! !
!MDLLayoutWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLLayoutWidget categoriesFor: #title!accessing!public! !
!MDLLayoutWidget categoriesFor: #title:!accessing!public! !

