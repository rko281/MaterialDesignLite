"Filed out from Dolphin Smalltalk 7"!

MDLLoginWidget subclass: #MDLLoginDialogWidget
	instanceVariableNames: 'closeId openId signInTitleLabel signInButtonLabel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLoginDialogWidget guid: (GUID fromString: '{c011bc40-9997-432e-81e1-a315010272de}')!
MDLLoginDialogWidget comment: 'I represent the login widget but I am display in a dialog'!
!MDLLoginDialogWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLLoginDialogWidget methodsFor!

closeId	^ closeId!

closeId: anObject	^ closeId := anObject!

initialize	super initialize.	signInTitleLabel := 'Sign In'.	signInButtonLabel := 'Sign In'!

openId	^ openId!

openId: anObject	^ openId := anObject!

renderCancelButtonOn: html	html mdlButton		id: closeId;		raised;		with: cancelLabel!

renderContentOn: html	self renderOpenButtonOn: html.	self renderLoginDialogOn: html!

renderLoginDialogOn: html	html mdlDialog		openButtonId: openId;		closeButtonId: (closeId := html nextId);		with: [ html mdlDialogTitle				class: 'mdl-color--primary';				with: signInTitleLabel.			html mdlDialogContent: [ super renderContentOn: html ] ]!

renderOpenButtonOn: html	html mdlButton		id: (openId := html nextId);		raised;		colored;		rippleEffect;		with: signInButtonLabel! !
!MDLLoginDialogWidget categoriesFor: #closeId!accessing!public! !
!MDLLoginDialogWidget categoriesFor: #closeId:!accessing!public! !
!MDLLoginDialogWidget categoriesFor: #initialize!initialization!public! !
!MDLLoginDialogWidget categoriesFor: #openId!accessing!public! !
!MDLLoginDialogWidget categoriesFor: #openId:!accessing!public! !
!MDLLoginDialogWidget categoriesFor: #renderCancelButtonOn:!public!rendering! !
!MDLLoginDialogWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLLoginDialogWidget categoriesFor: #renderLoginDialogOn:!public!rendering! !
!MDLLoginDialogWidget categoriesFor: #renderOpenButtonOn:!public!rendering! !

