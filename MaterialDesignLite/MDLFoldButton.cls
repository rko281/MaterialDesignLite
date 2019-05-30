"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLFoldButton
	instanceVariableNames: 'onCompleteScript divId isFolded'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLFoldButton guid: (GUID fromString: '{22a5490c-8205-4b4f-b94b-1ace1a76e857}')!
MDLFoldButton comment: 'Description--------------------Component used to fold/unfold a MDLVerticalToolbar.'!
!MDLFoldButton categoriesForClass!Material-Design-Lite-Extensions-Panels! !
!MDLFoldButton methodsFor!

divId	^ divId!

divId: anObject	divId := anObject!

fold	self isFolded: true!

iconLabel	^ #swap_horiz!

initialize	super initialize.	self unfold!

isFolded	^ isFolded!

isFolded: anObject	isFolded := anObject!

isSelected	"To be polymorphic with MDLPanelSwitcherButton"		^ false!

isSelected: aBoolean 	"Just to be polymorph with other buttons. I do not need to keep my selection."!

onCompleteScript	^ onCompleteScript ifNil: [ onCompleteScript := '' ]!

onCompleteScript: anObject	onCompleteScript := anObject!

owner: aSYNVerticalToolbar 	"Just to be polymorph. I do nothing"!

renderContentOn: html	html mdlIcon		id: html nextId;		attributeAt: 'data-fold' put: self isFolded asString;		attributeAt: 'data-for' put: self divId;		class: #'fold-button';		onClick:			(html jQuery ajax				context: 'this' js;				callback: [ self isFolded: self isFolded not ];				onComplete: self showAndHide);		with: self iconLabel.	html mdlTooltip		large;		for: html lastId;		with: 'Toggle right panel'.	self isFolded		ifTrue: [ html document addLoadScript: ('document.getElementById(''' , self divId allButFirst , ''').style.width=''0'';' , self onCompleteScript) js ]!

resetVisusOnFold	self		onCompleteScript:			'setTimeout(function(){for(i=0;i<visus.length;i++)visus[i].visu.resize();for(i=0;i<visus.length;i++)visus[i].visu.fit();}, 1000)'!

showAndHide	^ ('$(".visualization").children().width(0);if(this.dataset.fold=="false"){this.dataset.fold="true";$(this.dataset.for)[0].style.width="0";}else{this.dataset.fold="false";$(this.dataset.for)[0].style.width="";};'		, self onCompleteScript) js!

unfold	self isFolded: false! !
!MDLFoldButton categoriesFor: #divId!accessing!public! !
!MDLFoldButton categoriesFor: #divId:!accessing!public! !
!MDLFoldButton categoriesFor: #fold!actions!public! !
!MDLFoldButton categoriesFor: #iconLabel!accessing!public! !
!MDLFoldButton categoriesFor: #initialize!initialization!public! !
!MDLFoldButton categoriesFor: #isFolded!accessing!public! !
!MDLFoldButton categoriesFor: #isFolded:!accessing!public! !
!MDLFoldButton categoriesFor: #isSelected!accessing!public! !
!MDLFoldButton categoriesFor: #isSelected:!accessing!public! !
!MDLFoldButton categoriesFor: #onCompleteScript!accessing!public! !
!MDLFoldButton categoriesFor: #onCompleteScript:!accessing!public! !
!MDLFoldButton categoriesFor: #owner:!accessing!public! !
!MDLFoldButton categoriesFor: #renderContentOn:!public!rendering! !
!MDLFoldButton categoriesFor: #resetVisusOnFold!options!public! !
!MDLFoldButton categoriesFor: #showAndHide!javascript!public! !
!MDLFoldButton categoriesFor: #unfold!actions!public! !

!MDLFoldButton class methodsFor!

for: aCssId	^ self for: aCssId onComplete: nil!

for: aCssId onComplete: aScript	^ self new		divId: aCssId;		onCompleteScript: aScript;		yourself! !
!MDLFoldButton class categoriesFor: #for:!instance creation!public! !
!MDLFoldButton class categoriesFor: #for:onComplete:!instance creation!public! !

