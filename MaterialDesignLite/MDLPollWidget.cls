﻿"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLPollWidget
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPollWidget guid: (GUID fromString: '{2e4b6814-3f36-4a2e-84be-9ed844a9855b}')!
MDLPollWidget comment: 'I represent a widget for polling with thumbs.
!MDLPollWidget categoriesForClass!Material-Design-Lite-Widgets-Poll! !
!MDLPollWidget methodsFor!

addNegativeVote

addPositiveVote

initialize

jsNegativeButtonClickedOn: html

jsPositiveButtonClickedOn: html

model

poll: aPoll

renderContentOn: html

renderNegativePollButtonOn: html

renderPollButtonsOn: html

renderPositivePollButtonOn: html
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

newWithPoll: aMDLPoll
!MDLPollWidget class categoriesFor: #newWithPoll:!instance creation!public! !
