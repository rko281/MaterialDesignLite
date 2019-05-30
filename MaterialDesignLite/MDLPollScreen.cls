"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLPollScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPollScreen guid: (GUID fromString: '{3c770879-7df6-498e-b1da-f95d9edb7a90}')!
MDLPollScreen comment: 'Screen to render MDLPollWidget examples'!
!MDLPollScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLPollScreen methodsFor!

poll	^ OrderedDictionary new		add: 'Poll Widget' -> #renderPollOn:;		yourself!

renderPollOn: html	html div		style: 'width: 100px;';		with: MDLPollWidget new!

renderScreenContentOn: html	self render: self poll on: html! !
!MDLPollScreen categoriesFor: #poll!public!sections! !
!MDLPollScreen categoriesFor: #renderPollOn:!demos!public! !
!MDLPollScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLPollScreen class methodsFor!

description	^ 'A simple poll widget.'!

icon	^ #comppollPng!

title	^ 'Poll'! !
!MDLPollScreen class categoriesFor: #description!accessing!public! !
!MDLPollScreen class categoriesFor: #icon!accessing!public! !
!MDLPollScreen class categoriesFor: #title!accessing!public! !

