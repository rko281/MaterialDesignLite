"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLSnackbar
	instanceVariableNames: 'message timeout actionText action'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbar guid: (GUID fromString: '{052bea42-529a-423d-83f0-87c6e456e5d9}')!
MDLSnackbar comment: 'Description--------------------Transient popup notifications.Example--------------------	| snackbar |	snackbar := html mdlSnackbar		message: ''Action finished.'';		timeout: 3000;		yourself.	(html mdlSnackbarButtonFor: snackbar)		raised;		rippleEffect;		with: ''Show toast''		Internal Representation and Key Implementation Points.--------------------	actionText is the text of the button in the snackbar, it could be something like an ''undo'' button	action is the action to execute when the actionText button is pressed'!
!MDLSnackbar categoriesForClass!Material-Design-Lite-Components-Snackbar! !
!MDLSnackbar methodsFor!

action	^ action!

action: aString	action := aString!

actionText	^ actionText!

actionText: aString	actionText := aString!

defaultTimeout	^'2000'!

getJsShowingSnackbar	^ String		streamContents: [ :s | 			s				nextPutAll: 'var snackbarContainer=document.querySelector("#';				nextPutAll: self id;				nextPutAll: '");var data={};data.message="';				nextPutAll: (self message ifNil: [ '' ]);				nextPutAll: '";data.timeout=';				nextPutAll: self timeout asString;				nextPut: $;.			action				ifNotNil: [ s						nextPutAll: 'data.actionText="';						nextPutAll: (self actionText ifNil: [ 'Action' ]);						nextPutAll: '";var handler=function(event){';						nextPutAll: self action;						nextPutAll: '};data.actionHandler=handler;' ].			s nextPutAll: 'snackbarContainer.MaterialSnackbar.showSnackbar(data);' ]!

initialize	super initialize.	self class: 'mdl-js-snackbar'.	self class: 'mdl-snackbar'.   timeout := self defaultTimeout!

message	^ message!

message: aString	message := aString!

timeout	^ timeout!

timeout: anInteger	timeout := anInteger! !
!MDLSnackbar categoriesFor: #action!accessing!public! !
!MDLSnackbar categoriesFor: #action:!accessing!public! !
!MDLSnackbar categoriesFor: #actionText!accessing!public! !
!MDLSnackbar categoriesFor: #actionText:!accessing!public! !
!MDLSnackbar categoriesFor: #defaultTimeout!initialization!public! !
!MDLSnackbar categoriesFor: #getJsShowingSnackbar!javascript!public! !
!MDLSnackbar categoriesFor: #initialize!initialization!public! !
!MDLSnackbar categoriesFor: #message!accessing!public! !
!MDLSnackbar categoriesFor: #message:!accessing!public! !
!MDLSnackbar categoriesFor: #timeout!accessing!public! !
!MDLSnackbar categoriesFor: #timeout:!accessing!public! !

