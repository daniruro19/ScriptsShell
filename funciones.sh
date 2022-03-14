#!/bin/bash

let A=100
let B=200

function suma(){
	let C=$A+$B
	echo "Suma: $C"
}

function resta(){
	let C=$A-$B
	echo "Resta: $C"
}

suma
resta
