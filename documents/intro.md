# Modular Linked Documents

In order to publish a graph of information in a decentralized way, we need a common way of encoding the information, a mechanism to expose it, so it can be accessed and manipulated by information consumers and a way to identify and connect subsets of information published by different authors.

HTML documents, URLs and HTTP are the solutions used in the web to solve this problem. AMF re-uses URLs and HTTP to publish and identify information but uses RAML as the preferred document format for the information published using AMF.

RAML is a simple YAML based syntax introduced by MuleSoft to describe HTTP APIs in a human friendly. The main characteristics of RAML are:

- It is an extension to YAML, every valid RAML document is valid YAML 1.2 document
- RAML documents are linked documents. It supports hypermedia through the `!include`tag.
- RAML documents are modular. They can be reused in other documents through the declaration of RAML libraries and RAML fragments.

AMF can parse a RAML document and generate a graph of information encoded in JSON-LD potentially including links to other RAML documents. Each RAML document is a subgraph of a bigger decentralized graph formed by the set of linked RAML documents.

Each RAML document exposed through HTTP is RESTful resource that can be manipulated through the HTTP uniform interface providing in this way an interface for AMF clients to mutate the decentralized information graph.

RAML documents in AMF can also be validated and can describe the meaning of the data in the document using a set of shared terms defined in a RAML vocabulary reused in many different RAML documents.

Information in other formats than RAML, like OpenAPI, can be integrated in the graph exposing it through HTTP and implementing a plugin for the AMF parser that is capable of mapping that document format into a JSON-LD graph.

In the next sections of this chapter we will review the syntax and types of RAML documents and how they can be combined to provide a modular description of information.
