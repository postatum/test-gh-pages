# Introduction

MuleSoft's Application Modeling Framework (AMF) is a set of tools to describe and connect information into a unified knowledge graph in a simple way.

AMF works at three different levels:

 - Describes the meaning of the information as a set of shared vocabularies
 - Publishes data as a decentralized web of modular linked documents making use of the defined vocabulary terms and following well defined schemas
 - Integrates the linked documents as a single data graph that can be browsed and queried by AMF clients


The preferred syntax to describe information and data in AMF is based on the YAML syntax used in MuleSoft's RAML 1.0 API specification language. RAML is an extension to YAML that allows documents to link to other RAML document fragments and build reusable collections of data as RAML libraries. RAML 1.0 and RAML 0.8 documents are valid documents supported by AMF.
Other types of documents, like OpenAPI documents, or GraphQL schemas can be integrated in AMF through plugins. OpenAPI 2.0 is already supported by AMF 1.0.

HTTP and hyperlinks are the chosen mechanisms to publish and link data in AMF. Information published using AMF is RESTful (including hypermedia) by design and it can be manipulated through the uniform HTTP interface.

AMF uses W3C recommendations like JSON-LD and SHACL to integrate, validate and make it easy for machines to process the information described in human friendly RAML documents.
