# RAML Dialects

RAML Vocabularies describe the meaning of the information being published in RAML documents but it does not prescribe the actual shape of the data graph published.

Since AMF is based in publishing a graph of modular linked RAML documents that can be parsed as a unified information graph, describing the shape of the graph of data means defining the structure (the schema or the grammar) of new types of RAML Documents, RAML Fragments and RAML Libraries. We call these descriptions of types of related RAML documents a RAML Dialect.

A RAML Dialect is just two things:

- A mapping of terms from RAML Vocabularies to the nodes of a RAML document
- A declaration of which nodes can be encoded and declared in RAML documents

The information of the RAML Dialect allows the AMF parser to validate a document and to generate the data graph for the document of the RAML Dialect.

The full syntax and semantics for RAML Dialects can be found in the [RAML Dialects documentation](https://github.com/mulesoft/amf/blob/master/documentation/raml_dialects.md).

## RAML dialects syntax

## Validation: RAML Dialects as data graph shapes
