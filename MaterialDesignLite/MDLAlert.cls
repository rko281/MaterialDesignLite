"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLAlert
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAlert guid: (GUID fromString: '{2eae1d83-dd14-4445-8cdc-c2f926f51b9e}')!
MDLAlert comment: 'Description--------------------I am a brush to create alerts.Alerts are used to display feedback to users. They can have multiple kind of feedback such as:- Neutral (default)- Information - Success- Warning- Danger Examples--------------------	html mdlAlert		beDanger;		with: [ 					html strong: ''This is a test message.''.					html space.					html text: ''This is the rest of the message that should not be strong.''.					html anchor						callback: [ 									"Do nothing"									 ];						with: ''This is an anchor'' ]'!
!MDLAlert categoriesForClass!Material-Design-Lite-Extensions-Alerts! !
!MDLAlert methodsFor!

beDanger	self class: 'mdl-alert__danger'!

beDefault	self class: 'mdl-alert__default'!

beInfo	self class: 'mdl-alert__info'!

beSuccess	self class: 'mdl-alert__success'!

beWarning	self class: 'mdl-alert__warning'!

initialize	super initialize.	self class: 'mdl-alert'! !
!MDLAlert categoriesFor: #beDanger!options!public! !
!MDLAlert categoriesFor: #beDefault!options!public! !
!MDLAlert categoriesFor: #beInfo!options!public! !
!MDLAlert categoriesFor: #beSuccess!options!public! !
!MDLAlert categoriesFor: #beWarning!options!public! !
!MDLAlert categoriesFor: #initialize!initialization!public! !

