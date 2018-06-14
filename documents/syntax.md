# RAML Syntax

RAML syntax is just an extension to YAML in order to support links between documents and introduce modularity in the description of information.

## RAML dialect declaration

Each RAML document must start with a comment declaring which particular graph of data is encoded in the document in order for the AMF parser to validate and extract the graph of data encoded in the document.
This information is called the RAML dialect and includes the name and the version of the dialect used in the document. New dialects encoding different data graphs can be defined using AMF.

The following example introduces a RAML 1.0 document:

``` yaml
#%RAML 1.0
```

The following declaration introduces the document as a customer custom validation document using the custom validation profile dialect:

``` yaml
#%Validation Profile 1.0
```

Documents without declaration and not supported by any AMF plugin will be parsed as an external fragment containing the raw textual content of the document.

## Linking full documents with `!include`

Full RAML documents containing a graph of information that can be reused in different documents, known as RAML Fragments, can be linked from other RAML documents using the `!include` tag. A valid URL must be provided as the argument to the tag. `!include` tags have the same role as `a` anchor tags in HTML documents being the basic type of hyperlink in a RAML document.
