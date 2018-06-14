# Object Oriented Model

AMF provides an object oriented model to build, modify, and traverse through units and elements. Each plugin exposes different classes matching specific domains.

##Fields

Fields on classes are usually wrapped with a convenient class to avoid the use of `null / undefined`. These field wrappers are defined on package ```amf.client.model```.

Available field wrappers are `StrField`, `IntField`, `BoolField`, `DoubleField`, `FloatField`, and `AnyField`.

###Accessing defined field

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/test/java/co/acme/model/Fields.java#field-defined)
{%- endcodetabs %}

###Accessing `null / undefined` field

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/test/java/co/acme/model/Fields.java#field-undefined)
{%- endcodetabs %}

## Annotations

Custom annotations on elements and scalars are accessible on model. 

Bellow example defines a webapi with custom annotations:

[example-raml](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/main/resources/examples/custom-annotations.raml)

###Accessing element annotations

To access element custom annotations, see `customDomainProperties` domain element method:

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/test/java/co/acme/model/Annotations.java#element-annotations)
{%- endcodetabs %}

###Accessing scalar annotations

To access scalar custom annotations, see `annotations > custom` field method:

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/test/java/co/acme/model/Annotations.java#field-annotations)
{%- endcodetabs %}

## WebApi plugin

AMF WebApi plugin allows to programmatically create and traverse a WebApi.

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/test/java/co/acme/model/WebApiBuilder.java#raml-10-webapi-builder)
{%- endcodetabs %}