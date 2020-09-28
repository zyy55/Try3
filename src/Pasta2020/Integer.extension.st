Extension { #name : #Integer }

{ #category : #'*Pasta2020' }
Integer >> dolar [
	^ Pasta moneda: 'DOL' quantitat: self
]

{ #category : #'*Pasta2020' }
Integer >> euro [
	^ Pasta moneda: 'EUR' quantitat: self
]
