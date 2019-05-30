"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLSnackbarScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbarScreen guid: (GUID fromString: '{a6906ac6-787d-413a-a0d4-7c21ea7718de}')!
MDLSnackbarScreen comment: 'I''m representing snackbar component screen'!
!MDLSnackbarScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLSnackbarScreen methodsFor!

renderScreenContentOn: html	self		render: self snackbar on: html;		render: self toast on: html!

renderSnackbarOn: html	| snackbar |	snackbar := html mdlSnackbar		message: 'Color of the button changed';		actionText: 'Undo';		action: 'document.querySelector("#snackbar-button").style.backgroundColor = ""';		timeout: 2000;		yourself.	(html mdlSnackbarButtonFor: snackbar)		raised;		rippleEffect;		id: 'snackbar-button';		onClick: 'document.querySelector("#snackbar-button").style.backgroundColor = "#" + Math.floor(Math.random() * 0xFFFFFF).toString(16)' js;		with: 'Show snackbar'!

renderToastOn: html	| snackbar |	snackbar := html mdlSnackbar		message: 'Action finished.';		timeout: 3000;		yourself.	(html mdlSnackbarButtonFor: snackbar)		raised;		rippleEffect;		with: 'Show toast'!

snackbar	^ OrderedDictionary new		add: 'Snackbar' -> #renderSnackbarOn:;		yourself!

toast	^ OrderedDictionary new		add: ' Toast' -> #renderToastOn:;		yourself! !
!MDLSnackbarScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLSnackbarScreen categoriesFor: #renderSnackbarOn:!demos!public! !
!MDLSnackbarScreen categoriesFor: #renderToastOn:!demos!public! !
!MDLSnackbarScreen categoriesFor: #snackbar!public!sections! !
!MDLSnackbarScreen categoriesFor: #toast!public!sections! !

!MDLSnackbarScreen class methodsFor!

description	^ 'Transient popup notifications.'!

icon	^ 'compsnackbarPng'!

title	^ 'Snackbar'! !
!MDLSnackbarScreen class categoriesFor: #description!accessing!public! !
!MDLSnackbarScreen class categoriesFor: #icon!accessing!public! !
!MDLSnackbarScreen class categoriesFor: #title!accessing!public! !

