"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLNewPasswordWidget
	instanceVariableNames: 'currentPassword newPassword badPasswordBlock oldPasswordLabel newPasswordLabel onSuccessBlock confirmPasswordLabel notMatchingPasswordsBlock rightOldPassword pattern errorMessage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNewPasswordWidget guid: (GUID fromString: '{e5b39af6-c000-47fc-ade4-9c820c82afbb}')!
MDLNewPasswordWidget comment: 'I am a widget for password change'!
!MDLNewPasswordWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLNewPasswordWidget methodsFor!

badPasswordBlock	^ badPasswordBlock ifNil: [ self error: 'Bad password' ]!

badPasswordBlock: anObject	badPasswordBlock := anObject!

confirmPasswordLabel	^ confirmPasswordLabel ifNil: [ newPasswordLabel := 'Confirm password' ]!

confirmPasswordLabel: anObject	confirmPasswordLabel := anObject!

currentPassword	^ currentPassword!

currentPassword: anObject	currentPassword := anObject!

initialize	super initialize.	rightOldPassword := false.	pattern := ''.	errorMessage := ''!

newPassword	^ newPassword!

newPassword: anObject	newPassword := anObject!

newPasswordLabel	^ newPasswordLabel ifNil: [ newPasswordLabel := 'New password' ]!

newPasswordLabel: anObject	^ newPasswordLabel := anObject!

notMatchingPasswordsBlock	^ notMatchingPasswordsBlock ifNil: [ self error: 'Passwords don''t match' ]!

notMatchingPasswordsBlock: anObject	notMatchingPasswordsBlock := anObject!

oldPasswordLabel	^ oldPasswordLabel ifNil: [ oldPasswordLabel := 'Current password' ]!

oldPasswordLabel: anObject	^ oldPasswordLabel := anObject!

onSuccessBlock	^ onSuccessBlock ifNil: [ ^ [  ] ]!

onSuccessBlock: anObject	onSuccessBlock := anObject!

pattern: aPattern errorMessage: aString	pattern := aPattern.	errorMessage := aString!

renderContentOn: html	html		render:			(MDLTextFieldWidget new				beFloatingLabel;				type: 'password';				callback: [ :aString | 					rightOldPassword := (MD5 hashMessage: aString) = currentPassword.					rightOldPassword						ifFalse: self badPasswordBlock ];				label: self oldPasswordLabel;				yourself).	html		render:			(MDLTextFieldWidget new				beFloatingLabel;				type: 'password';				pattern: pattern errorMessage: errorMessage;				on: #newPassword of: self;				label: self newPasswordLabel;				yourself).	html		render:			(MDLTextFieldWidget new				beFloatingLabel;				type: 'password';				label: self confirmPasswordLabel;				callback: [ :aString | 					aString = newPassword						ifFalse: self notMatchingPasswordsBlock						ifTrue: [ rightOldPassword								ifTrue: [ self onSuccessBlock value: aString ] ] ])! !
!MDLNewPasswordWidget categoriesFor: #badPasswordBlock!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #badPasswordBlock:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #confirmPasswordLabel!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #confirmPasswordLabel:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #currentPassword!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #currentPassword:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #initialize!initialization!public! !
!MDLNewPasswordWidget categoriesFor: #newPassword!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #newPassword:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #newPasswordLabel!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #newPasswordLabel:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #notMatchingPasswordsBlock!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #notMatchingPasswordsBlock:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #oldPasswordLabel!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #oldPasswordLabel:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #onSuccessBlock!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #onSuccessBlock:!accessing!public! !
!MDLNewPasswordWidget categoriesFor: #pattern:errorMessage:!options!public! !
!MDLNewPasswordWidget categoriesFor: #renderContentOn:!public!rendering! !

