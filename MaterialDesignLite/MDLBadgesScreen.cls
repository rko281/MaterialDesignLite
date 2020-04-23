"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLBadgesScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLBadgesScreen guid: (GUID fromString: '{d7137e20-7d82-4868-82a6-5afc0683e1ce}')!
MDLBadgesScreen comment: 'Small status descriptors for UI elements.'!
!MDLBadgesScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLBadgesScreen methodsFor!

iconBadges	^ OrderedDictionary new		add: 'Number' -> #renderNumberBadgeOn:;		add: 'Icon' -> #renderIconBadgeOn:;		yourself!

noBackgroundBadges	^ OrderedDictionary new		add: 'Number with no background' -> #renderNoBackgroundNumberBadgeOn:;		add: 'Icon with no background' -> #renderNoBackgroundIconBadgeOn:;		yourself!

overlapedBadges	^ OrderedDictionary new		add: 'Overlaped' -> #renderOverlapedBadgeOn:;		add: 'Not overlaped' -> #renderNotOverlapedBadgeOn:;		yourself!

renderIconBadgeOn: html	html mdlIconBadge		dataBadge: (Character codePoint: 9829) asString;		overlap;		with: 'account_box'!

renderIconTextBadgeOn: html	html mdlBadge		dataBadge: (Character codePoint: 9829) asString;		with: 'Mood'!

renderNoBackgroundIconBadgeOn: html	html mdlIconBadge		dataBadge: (Character codePoint: 9829) asString;		overlap;		noBackground;		with: 'account_box'!

renderNoBackgroundNumberBadgeOn: html	html mdlIconBadge		dataBadge: '1';		overlap;		noBackground;		with: 'account_box'!

renderNotOverlapedBadgeOn: html	html mdlBadge		dataBadge: '4';		with: 'Inbox'!

renderNumberBadgeOn: html	html mdlIconBadge		dataBadge: '1';		overlap;		with: 'account_box'!

renderNumberTextBadgeOn: html	html mdlBadge		dataBadge: '4';		with: 'Inbox'!

renderOverlapedBadgeOn: html	html mdlBadge		dataBadge: '4';		overlap;		with: 'Inbox'!

renderScreenContentOn: html	self		render: self iconBadges on: html;		render: self textBadges on: html;		render: self overlapedBadges on: html;		render: self noBackgroundBadges on: html!

textBadges	^ OrderedDictionary new		add: 'Number' -> #renderNumberTextBadgeOn:;		add: 'Icon' -> #renderIconTextBadgeOn:;		yourself! !
!MDLBadgesScreen categoriesFor: #iconBadges!public!sections! !
!MDLBadgesScreen categoriesFor: #noBackgroundBadges!public!sections! !
!MDLBadgesScreen categoriesFor: #overlapedBadges!public!sections! !
!MDLBadgesScreen categoriesFor: #renderIconBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderIconTextBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderNoBackgroundIconBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderNoBackgroundNumberBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderNotOverlapedBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderNumberBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderNumberTextBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderOverlapedBadgeOn:!demos!public! !
!MDLBadgesScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLBadgesScreen categoriesFor: #textBadges!public!sections! !

!MDLBadgesScreen class methodsFor!

icon	^ 'compbadgesPng'!

title	^ 'Badges'! !
!MDLBadgesScreen class categoriesFor: #icon!accessing!public! !
!MDLBadgesScreen class categoriesFor: #title!accessing!public! !

