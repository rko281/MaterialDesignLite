"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLSmallFooter
	instanceVariableNames: 'leftSection rightSection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSmallFooter guid: (GUID fromString: '{a565fa4f-9101-4538-97cb-109f80772ab0}')!
MDLSmallFooter comment: 'I''m a Mini Footer.In this implementation, leftSection is a Dictionary (title -> {  label -> url }).The right section must be a Collection of WAComponents that will be rendered on the right side.'!
!MDLSmallFooter categoriesForClass!Material-Design-Lite-Widgets-Footer! !
!MDLSmallFooter methodsFor!

initialize	super initialize.	leftSection := MDLFooterNilSection new.	rightSection := MDLFooterNilSection new!

onLeftSideAddLinks: links	"Links must be formatted as following : (header -> #((label1->url1) . (label2 -> url2)))"	leftSection isNilSection		ifTrue: [ leftSection := MDLFooterLinksSection new ].	leftSection := leftSection addLinksList: (MDLMiniFooterLinksList new addLinks: links; yourself)!

onRightSideAddComponents: components	"Components must be an array of WAComponents (render: will be called on them)"	rightSection isNilSection		ifTrue: [ rightSection := MDLFooterComponentsSection new ].	rightSection := rightSection addComponents: components!

renderContentOn: html	html mdlMiniFooter: [ 			html mdlMiniFooterLeftSection: [ leftSection renderSectionOn: html ].			html mdlMiniFooterRightSection: [ rightSection renderSectionOn: html ] ] ! !
!MDLSmallFooter categoriesFor: #initialize!initialization!public! !
!MDLSmallFooter categoriesFor: #onLeftSideAddLinks:!adding!public! !
!MDLSmallFooter categoriesFor: #onRightSideAddComponents:!adding!public! !
!MDLSmallFooter categoriesFor: #renderContentOn:!public!rendering! !

