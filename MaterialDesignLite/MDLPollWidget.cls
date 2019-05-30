"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLPollWidget
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPollWidget guid: (GUID fromString: '{2e4b6814-3f36-4a2e-84be-9ed844a9855b}')!
MDLPollWidget comment: 'I represent a widget for polling with thumbs.For you project, you must subclass me and override #negativePollBlock and #positivePollBlock '!
!MDLPollWidget categoriesForClass!Material-Design-Lite-Widgets-Poll! !
!MDLPollWidget methodsFor!

addNegativeVote	model increaseNegativeCount!

addPositiveVote	model increasePositiveCount!

initialize	super initialize.	self class: 'mdl-poll-widget'.	model := MDLPoll new!

jsNegativeButtonClickedOn: html	^ (html jQuery id: self id) load		html: [ :ajaxHtml | 			self addNegativeVote.			self renderPollButtonsOn: ajaxHtml ]!

jsPositiveButtonClickedOn: html	^ (html jQuery id: self id) load		html: [ :ajaxHtml | 			self addPositiveVote.			self renderPollButtonsOn: ajaxHtml ]!

model	^ model!

poll: aPoll	model := aPoll!

renderContentOn: html	self ensureId: html.	html div		id: self id;		with: [ self renderPollButtonsOn: html ]!

renderNegativePollButtonOn: html	html mdlIconBadge		overlap;		dataBadge: model negativeCount greaseString;		with: [ html mdlButton				rippleEffect;				onClick: (self jsNegativeButtonClickedOn: html);				icon: 'thumb_down' ]!

renderPollButtonsOn: html	self renderPositivePollButtonOn: html.	self renderNegativePollButtonOn: html!

renderPositivePollButtonOn: html	html mdlIconBadge		overlap;		dataBadge: model positiveCount greaseString;		with: [ html mdlButton				rippleEffect;				icon;				onClick: (self jsPositiveButtonClickedOn: html);				icon: 'thumb_up' ]! !
!MDLPollWidget categoriesFor: #addNegativeVote!adding!public! !
!MDLPollWidget categoriesFor: #addPositiveVote!adding!public! !
!MDLPollWidget categoriesFor: #initialize!initialization!public! !
!MDLPollWidget categoriesFor: #jsNegativeButtonClickedOn:!javascript!public! !
!MDLPollWidget categoriesFor: #jsPositiveButtonClickedOn:!javascript!public! !
!MDLPollWidget categoriesFor: #model!accessing!public! !
!MDLPollWidget categoriesFor: #poll:!accessing!public! !
!MDLPollWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLPollWidget categoriesFor: #renderNegativePollButtonOn:!public!rendering! !
!MDLPollWidget categoriesFor: #renderPollButtonsOn:!public!rendering! !
!MDLPollWidget categoriesFor: #renderPositivePollButtonOn:!public!rendering! !

!MDLPollWidget class methodsFor!

newWithPoll: aMDLPoll	^ self new poll: aMDLPoll! !
!MDLPollWidget class categoriesFor: #newWithPoll:!instance creation!public! !

