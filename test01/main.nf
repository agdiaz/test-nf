#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

params.str = "Hello"

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of(params.str) | sayHello | view
