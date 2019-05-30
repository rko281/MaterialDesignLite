"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLNestedListTreeNode
	instanceVariableNames: 'element children selectedBranch selectedElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNestedListTreeNode guid: (GUID fromString: '{5d35ee17-c19e-4318-b563-5977a9c8cba1}')!
MDLNestedListTreeNode comment: 'I AM NOT AN USABLE COMPONENT, I AM A TOOL CLASSI am an object used when computing children for an element. It regroups the element, its children and a flag if it is the selected branch.'!
!MDLNestedListTreeNode categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLNestedListTreeNode methodsFor!

children	^ children!

children: anObject	children := anObject!

element	^ element!

element: anObject	element := anObject!

printOn: aStream	super printOn: aStream.	aStream nextPut: $[.	element printOn: aStream.	aStream nextPut: $]!

selectedBranch	^ selectedBranch!

selectedBranch: anObject	selectedBranch := anObject!

selectedElement	^ selectedElement!

selectedElement: anObject	selectedElement := anObject! !
!MDLNestedListTreeNode categoriesFor: #children!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #children:!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #element!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #element:!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #printOn:!printing!public! !
!MDLNestedListTreeNode categoriesFor: #selectedBranch!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #selectedBranch:!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #selectedElement!accessing!public! !
!MDLNestedListTreeNode categoriesFor: #selectedElement:!accessing!public! !

!MDLNestedListTreeNode class methodsFor!

element: anElement children: aCollectionOfChildren selectedBranch: aBoolean selectedElement: aBooleanIfSelected	^ self new		element: anElement;		children: aCollectionOfChildren;		selectedBranch: aBoolean;		selectedElement: aBooleanIfSelected;		yourself! !
!MDLNestedListTreeNode class categoriesFor: #element:children:selectedBranch:selectedElement:!instance creation!public! !

