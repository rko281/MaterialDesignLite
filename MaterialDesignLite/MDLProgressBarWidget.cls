"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLProgressBarWidget
	instanceVariableNames: 'progressionBlock refreshTime hide'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLProgressBarWidget guid: (GUID fromString: '{945880c8-96e5-49a4-b2ae-c341c1370bf3}')!
MDLProgressBarWidget comment: 'Description--------------------I am a widget that display a progress bar. This progress bar will be linked to a progression block.Public API and Key Messages--------------------- #hidden 		To hide the progress bar at the page oppeningExamples--------------------	 Internal Representation and Key Implementation Points.--------------------    Instance Variables	hyde:					<aBoolean>		If true, the progress bar will be hidden at the rendering	progressionBlock:		<BlockClosure>	This must have 0 parameter. It will be evaluated each time to know the progression of the bar. The returned value must be within 0 and 1.	refreshTime:				<Duration>		The time between two evaluations of the progression block. A short time will refresh the bar more ofter but will require more work from the server'!
!MDLProgressBarWidget categoriesForClass!Material-Design-Lite-Widgets-Loading! !
!MDLProgressBarWidget methodsFor!

hidden	self hide: true!

hide	^ hide!

hide: aBoolean	hide := aBoolean!

initialize	super initialize.	self refreshTime: 1 seconds.	self hide: false!

progressionBlock	^ progressionBlock!

progressionBlock: aBlock	progressionBlock := aBlock!

progressScript: html	self flag: #todo.	"Cyril: I think we can clean a little this part. Maybe it should go partly in a javascript file"	^ html document		addLoadScript:			('var interval' , id , ' = setInterval(function(){') js				,					(html jQuery getJson						json: [ :json | 							json								object: [ json key: #progress value: ((100 * self progressionBlock value) asInteger min: 100) ] ];						onSuccess:							'if(arguments[0].progress >= 100) window.clearInterval(interval' , id								,									');				document.querySelector(''#' , id								, ''').MaterialProgress.setProgress(arguments[0].progress);')				, (';}, ' , self refreshTime asMilliSeconds asString , ');') js!

refreshTime	^ refreshTime!

refreshTime: aDuration	refreshTime := aDuration!

renderContentOn: html	self ensureId: html.	self flag: #todo.	"This need some cleaning."	"The style should be in a css file"	html mdlProgressBar		style: 'margin: auto;' , (self hide ifTrue: [ 'display: none;' ] ifFalse: [ '' ]);		id: id.	self hide ifFalse: [ self progressScript: html ]!

showScript: html	^ (html jQuery id: self id) show , (self progressScript: html)! !
!MDLProgressBarWidget categoriesFor: #hidden!options!public! !
!MDLProgressBarWidget categoriesFor: #hide!accessing!public! !
!MDLProgressBarWidget categoriesFor: #hide:!accessing!public! !
!MDLProgressBarWidget categoriesFor: #initialize!initialization!public! !
!MDLProgressBarWidget categoriesFor: #progressionBlock!accessing!public! !
!MDLProgressBarWidget categoriesFor: #progressionBlock:!accessing!public! !
!MDLProgressBarWidget categoriesFor: #progressScript:!javascript!public! !
!MDLProgressBarWidget categoriesFor: #refreshTime!accessing!public! !
!MDLProgressBarWidget categoriesFor: #refreshTime:!accessing!public! !
!MDLProgressBarWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLProgressBarWidget categoriesFor: #showScript:!javascript!public! !

!MDLProgressBarWidget class methodsFor!

progression: aProgressionBlock	^ self new		progressionBlock: aProgressionBlock;		yourself!

progression: aProgressionBlock every: aDuration	^ self new		progressionBlock: aProgressionBlock;		refreshTime: aDuration;		yourself! !
!MDLProgressBarWidget class categoriesFor: #progression:!instance creation!public! !
!MDLProgressBarWidget class categoriesFor: #progression:every:!instance creation!public! !

