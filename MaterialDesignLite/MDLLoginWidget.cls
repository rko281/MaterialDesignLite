"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLLoginWidget
	instanceVariableNames: 'titleLabel titleLevel loginLabel passwordLabel login password submitLabel callback cancelLabel cancelCallback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLoginWidget guid: (GUID fromString: '{37ee43f6-fc5c-4c50-88ba-760740f4ab7a}')!
MDLLoginWidget comment: 'A login widget which use a MDLCardWidgetI''m ready to use, you just have to give me a callback with 2 arguments (login and password) and insert me in a form.'!
!MDLLoginWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLLoginWidget methodsFor!

callback: anObject	callback := anObject!

cancelCallback	^ cancelCallback ifNil: [ cancelCallback := [  ] ]!

cancelCallback: anObject	cancelCallback := anObject!

cancelLabel: anObject	cancelLabel := anObject!

initialize	super initialize.	titleLabel := 'Please, sign in'.	titleLevel := 2.	loginLabel := 'Login'.	cancelLabel := 'Cancel'.	passwordLabel := 'Password'.	submitLabel := 'Sign In'!

login	^ login!

login: anObject	login := anObject!

loginInputWidget	^ MDLTextFieldWidget new		beFloatingLabel;		on: #login of: self;		label: loginLabel;		yourself!

loginLabel: anObject	loginLabel := anObject!

password	^ password!

password: anObject	password := anObject!

passwordInputWidget	^ MDLTextFieldWidget new beFloatingLabel		type: 'password';		on: #password of: self;		label: passwordLabel;		yourself!

passwordLabel: anObject	passwordLabel := anObject!

renderCancelButtonOn: html	html anchor		class: 'mdl-button mdl-js-button mdl-button--raised';		callback: self cancelCallback;		with: cancelLabel!

renderContentOn: html	self renderFieldsOn: html.	self renderSubmitButtonOn: html.	self renderCancelButtonOn: html!

renderFieldsOn: html	html render: self loginInputWidget.	html render: self passwordInputWidget!

renderSubmitButtonOn: html	html mdlButton		raised;		accentColor;		beSubmit;		callback: [ callback value: login value: password ];		with: submitLabel!

submitLabel: anObject	submitLabel := anObject!

titleLabel: anObject	titleLabel := anObject!

titleLevel: anObject	titleLevel := anObject! !
!MDLLoginWidget categoriesFor: #callback:!accessing!public! !
!MDLLoginWidget categoriesFor: #cancelCallback!accessing!public! !
!MDLLoginWidget categoriesFor: #cancelCallback:!accessing!public! !
!MDLLoginWidget categoriesFor: #cancelLabel:!accessing!public! !
!MDLLoginWidget categoriesFor: #initialize!initialization!public! !
!MDLLoginWidget categoriesFor: #login!accessing!public! !
!MDLLoginWidget categoriesFor: #login:!accessing!public! !
!MDLLoginWidget categoriesFor: #loginInputWidget!public!rendering! !
!MDLLoginWidget categoriesFor: #loginLabel:!accessing!public! !
!MDLLoginWidget categoriesFor: #password!accessing!public! !
!MDLLoginWidget categoriesFor: #password:!accessing!public! !
!MDLLoginWidget categoriesFor: #passwordInputWidget!public!rendering! !
!MDLLoginWidget categoriesFor: #passwordLabel:!accessing!public! !
!MDLLoginWidget categoriesFor: #renderCancelButtonOn:!public!rendering! !
!MDLLoginWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLLoginWidget categoriesFor: #renderFieldsOn:!public!rendering! !
!MDLLoginWidget categoriesFor: #renderSubmitButtonOn:!public!rendering! !
!MDLLoginWidget categoriesFor: #submitLabel:!accessing!public! !
!MDLLoginWidget categoriesFor: #titleLabel:!accessing!public! !
!MDLLoginWidget categoriesFor: #titleLevel:!accessing!public! !

