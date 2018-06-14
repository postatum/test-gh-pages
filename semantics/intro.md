# Describing Information Documents

In the [previous chapter](../documents/intro.md) of this book we have discussed how to publish information using RAML documents that can be parsed by AMF to generated a unified data graph.

In this chapter we will discuss how to describe the information that is going to be published through that set of RAML documents.

In AMF this process is accomplished in two stages:

- Create a **vocabulary** of terms for the types of entities in the RAML Documents and their properties
- Describe the **structure of new types of RAML documents**, fragments and libraries encoding information using vocabulary terms

In AMF vocabularies are created through auxiliary RAML documents called **RAML Vocabularies**.
The structure of new RAML documents are described in auxiliary RAML documents called **RAML Dialects**.

RAML Vocabularies capture knowledge about an specific state of affairs in a particular domain we want to publish information about. RAML 1.0 and OpenAPI 2.0 specifications for example, describe information about Web APIs. This process of capturing knowledge usually referred to as information modeling and is independent of how this knowledge is going to be used to provide the semantics for the graph of information published as a set of linked RAML documents.
RAML Vocabularies can be used to create a taxonomy of concepts used in an organization and can work with standard vocabularies like [Schema.org](http://schema.org).

On the other hand a RAML Dialect arranges the terms in a vocabulary describing the valid syntax of a new type of RAML document. In this way it is also prescribing the shape of the data graph that will be parsed by AMF. RAML Dialects also define which modular RAML units are valid for the dialect: which information can be encoded in RAML Fragments or declared as reusable RAML Libraries.
RAML Dialects can also be used to validate new RAML documents for the dialect or in the view of RAML documents as HTTP resources, to validate the creation of new resources in the graph.

Terms from one RAML Vocabulary can be used in multiple RAML Dialects and one RAML Dialect can use and mix any number of RAML Vocabularies. Interoperability in the resulting AMF graph is granted structurally by the validity enforced by RAML Dialects and semantically by the use of shared RAML Vocabularies across multiple RAML documents in the information graph.
