"Filed out from Dolphin Smalltalk 7"!

PackageManifest subclass: #ManifestMaterialDesignLiteWidgets
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ManifestMaterialDesignLiteWidgets guid: (GUID fromString: '{b30b73b8-b3e8-4f1f-91df-3c897cda1bae}')!
ManifestMaterialDesignLiteWidgets comment: 'ManifestMaterialDesignLiteWidgets class	instanceVariableNames: '''''!
!ManifestMaterialDesignLiteWidgets categoriesForClass!Material-Design-Lite-Widgets-Manifest! !
!ManifestMaterialDesignLiteWidgets class methodsFor!

description ^ 'Material Design Lite for Seaside (MDL) is a library of components for web developers based on Google''s Material Design Philosophy: "A visual language for our users that synthesizes the classic principles of good design with the innovation and possibility of technology and science." Understanding the goals and principles of Material Design is critical to the proper use of the Material Design Lite components. If you have not yet read the Material Design Introduction you should do so before attempting to use the components. (See https://material.io/guidelines/material-design/)Github: https://github.com/DuneSt/MaterialDesignLiteDemo: https://mdl.ferlicot.fr/The second part of Material Design Lite for Seaside is the Widgets. Widgets are Seaside components with behaviour at the difference of MDL components. They respect Material Design rules and provide to the developers predefined behaviour.An exemple of widget is the nested list already containing features such as dynamic loading of elements, research, sorting...'!

ruleGRAnsiConditionalsRuleV1FalsePositive	^ #(#(#(#RGMethodDefinition #(#MDLTextFieldWidget #renderContentOn: #false)) #'2016-07-06T16:57:57.793+02:00') )!

ruleRBSendsDifferentSuperRuleV1FalsePositive	^ #(#(#(#RGMethodDefinition #(#MDLLoginDialogWidget #renderLoginDialogOn: #false)) #'2016-07-11T14:50:20.68+02:00') )!

ruleRBTempsReadBeforeWrittenRuleV1FalsePositive	^ #(#(#(#RGMethodDefinition #(#MDLTextFieldWidget #renderContentOn: #false)) #'2016-07-11T15:47:20.1+02:00') )! !
!ManifestMaterialDesignLiteWidgets class categoriesFor: #description!meta/data!public! !
!ManifestMaterialDesignLiteWidgets class categoriesFor: #ruleGRAnsiConditionalsRuleV1FalsePositive!code/critics!public! !
!ManifestMaterialDesignLiteWidgets class categoriesFor: #ruleRBSendsDifferentSuperRuleV1FalsePositive!code/critics!public! !
!ManifestMaterialDesignLiteWidgets class categoriesFor: #ruleRBTempsReadBeforeWrittenRuleV1FalsePositive!code/critics!public! !

