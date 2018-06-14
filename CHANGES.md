# Changes in AMF 1.3.5

[Released May 09, 2018.](https://github.com/mulesoft/amf/releases/tag/v1.3.5)

## Vocabularies Plugin

**Change header in Dialect definition file**

```
#%Dialect 1.0
```
instead of previous:
```
#%RAML 1.0 Dialect
```

**Change header in Vocabularies definition file**

```
#%Vocabulary 1.0
```
instead of previous:
```
#%RAML 1.0 Vocabulary
```

## Domain Element

All the graphs method inside a DomainElement are now inside a Graph Object that is obtained with "graph" method in the DomainElement

# Changes in AMF 1.3.1

[Released April 13, 2018.](https://github.com/mulesoft/amf/releases/tag/v1.3.1)

AMF 1.3.1 does not introduce any non-backwards-compatible change.

## Custom Resolution

A resolution pipeline can be optionally specified to run a different set of steps. See [Resolution](programming/resolution.md).

## Fields

Scalar value annotations are now typed and accessible.

Option method is now Java `Optional` and JS `UndefOr`.

See [Model](programming/model.md#fields).

## Dialects

Added support for parsing dialects/instances from JSON files through the use of `$dialect`.

Example of dialect definition:

```json
{
  "$dialect": "RAML 1.0 Dialect",
  "dialect": "TestInstance",
  "version": "1.17",
  "nodeMappings": {
    "RootNode": {
      "classTerm": "tmp.str",
      "mapping": {
        "str": {
          "propertyTerm": "tmp.str",
          "range": "string"
        }
      }
    }
  },
  "documents": {
    "root": {
      "encodes": "RootNode"
    }
  },
  "external": {
    "tmp": "http://test/com/tmp#"
  }
}
```

Dialect instance for the above example:

```json
{
  "$dialect": "TestInstance 1.17",
  "str": "hey ho, let's go"
}
```

## Fixed issues and stories

[APIMF-453](https://www.mulesoft.org/jira/browse/APIMF-453)
[APIMF-489](https://www.mulesoft.org/jira/browse/APIMF-489)
[APIMF-490](https://www.mulesoft.org/jira/browse/APIMF-490)
[APIMF-493](https://www.mulesoft.org/jira/browse/APIMF-493)
[APIMF-494](https://www.mulesoft.org/jira/browse/APIMF-494)
[APIMF-496](https://www.mulesoft.org/jira/browse/APIMF-496)
[APIMF-497](https://www.mulesoft.org/jira/browse/APIMF-497)
[APIMF-498](https://www.mulesoft.org/jira/browse/APIMF-498)
[APIMF-499](https://www.mulesoft.org/jira/browse/APIMF-499)
[APIMF-500](https://www.mulesoft.org/jira/browse/APIMF-500)
[APIMF-540](https://www.mulesoft.org/jira/browse/APIMF-540)
[APIMF-541](https://www.mulesoft.org/jira/browse/APIMF-541)
[APIMF-545](https://www.mulesoft.org/jira/browse/APIMF-545)
[APIMF-546](https://www.mulesoft.org/jira/browse/APIMF-546)
[APIMF-546](https://www.mulesoft.org/jira/browse/APIMF-546)
[APIMF-548](https://www.mulesoft.org/jira/browse/APIMF-548)
[APIMF-552](https://www.mulesoft.org/jira/browse/APIMF-552)
[APIMF-553](https://www.mulesoft.org/jira/browse/APIMF-553)
[APIMF-556](https://www.mulesoft.org/jira/browse/APIMF-556)
[APIMF-564](https://www.mulesoft.org/jira/browse/APIMF-564)
[APIMF-566](https://www.mulesoft.org/jira/browse/APIMF-566)
[APIMF-568](https://www.mulesoft.org/jira/browse/APIMF-568)
[APIMF-570](https://www.mulesoft.org/jira/browse/APIMF-570)
[APIMF-571](https://www.mulesoft.org/jira/browse/APIMF-571)
[APIMF-572](https://www.mulesoft.org/jira/browse/APIMF-572)
[APIMF-573](https://www.mulesoft.org/jira/browse/APIMF-573)
[APIMF-574](https://www.mulesoft.org/jira/browse/APIMF-574)
[APIMF-576](https://www.mulesoft.org/jira/browse/APIMF-576)
[APIMF-577](https://www.mulesoft.org/jira/browse/APIMF-577)
[APIMF-578](https://www.mulesoft.org/jira/browse/APIMF-578)
[APIMF-579](https://www.mulesoft.org/jira/browse/APIMF-579)
[APIMF-580](https://www.mulesoft.org/jira/browse/APIMF-580)
[APIMF-581](https://www.mulesoft.org/jira/browse/APIMF-581)
[APIMF-582](https://www.mulesoft.org/jira/browse/APIMF-582)
[APIMF-587](https://www.mulesoft.org/jira/browse/APIMF-587)
[APIMF-595](https://www.mulesoft.org/jira/browse/APIMF-595)
[APIMF-612](https://www.mulesoft.org/jira/browse/APIMF-612)
[APIMF-615](https://www.mulesoft.org/jira/browse/APIMF-615)
[APIMF-620](https://www.mulesoft.org/jira/browse/APIMF-620)
[APIMF-626](https://www.mulesoft.org/jira/browse/APIMF-626)
[APIMF-626](https://www.mulesoft.org/jira/browse/APIMF-626)
[APIMF-627](https://www.mulesoft.org/jira/browse/APIMF-627)
[APIMF-628](https://www.mulesoft.org/jira/browse/APIMF-628)
[APIMF-631](https://www.mulesoft.org/jira/browse/APIMF-631)
[APIMF-632](https://www.mulesoft.org/jira/browse/APIMF-632)
[APIMF-634](https://www.mulesoft.org/jira/browse/APIMF-634)
[APIMF-635](https://www.mulesoft.org/jira/browse/APIMF-635)
[APIMF-636](https://www.mulesoft.org/jira/browse/APIMF-636)
[APIMF-639](https://www.mulesoft.org/jira/browse/APIMF-639)
[APIMF-640](https://www.mulesoft.org/jira/browse/APIMF-640)
[APIMF-641](https://www.mulesoft.org/jira/browse/APIMF-641)
[APIMF-642](https://www.mulesoft.org/jira/browse/APIMF-642)
[APIMF-645](https://www.mulesoft.org/jira/browse/APIMF-645)
[APIMF-651](https://www.mulesoft.org/jira/browse/APIMF-651)
[APIMF-652](https://www.mulesoft.org/jira/browse/APIMF-652)
[APIMF-656](https://www.mulesoft.org/jira/browse/APIMF-656)
[APIMF-665](https://www.mulesoft.org/jira/browse/APIMF-665)
[APIMF-666](https://www.mulesoft.org/jira/browse/APIMF-666)

# Changes in AMF 1.3.0

[Released March 27, 2018.](https://github.com/mulesoft/amf/releases/tag/v1.3.0)

AMF 1.3.0 introduces non-backwards-compatible changes

## Packages and naming

Client classes are moving to ```amf.client.*``` package. All core, webapi, and vocabularies client classes are moved. Plugins, parsers, renderers, and other classes where moved as well.

All ```*Generator``` classes are now ```*Renderer```.

## Fields

Fields on client classes (```String```, ```Int```, etc.) are now ```StrField```, ```IntField```, etc. This allows to retrieve raml scalar-value annotations, lexical information, etc. for all scalar values. As well, some convenient methods where added to handle with ```undefined``` or ```null``` field values:

```
val field: StrField | Intfield | BoolField | FloatField | DoubleField = ...

field.value() // returns the actual value of this field. If field is null will return "", 0, or false depending on the field type.
field.nonNull // returns a boolean indicating the field is not null
field.isNull // returns a boolean indicating the field is null or undefined
field.option() // returns an optional value for this field
field.is("Some value") // returns true if field value is not-null and equals given value
field.is(_ == "Some value") // returns true if field value is not-null and accepts given predicate

/** Only for StrField */
field.isNullOrEmpty // returns a boolean indicating the field is null, undefined, or an empty string
field.nonEmpty // returns a boolean indicating the field is not null, and string value is not empty
```

## Vocabularies Plugin

Vocabularies plugin has been rewritten from scratch.

**Changes in Dialect definition file**
```
documents:
  library:
    declares:
      products: ProductNode
  root:
    encodes: PresentationNode
```
instead of previous:
```
raml:
  module:
    declares:
      products: ProductNode
  document:
    encodes: PresentationNode
```

- replace ```hash``` for ```mapKey```
- If you use ```mapKey```, is no longer necessary to specify ```allowMultiple: true```
- range ```number``` to ```integer```

**Changes in Vocabulary definition file**
- range ```number``` to ```integer```

## WebApi Plugin

WebApi model has changed for future OAS 3.X support. Almost all changes where additions:

**WebApi**
- **servers** array field was added
- **baseUriparameters** field was deleted (it's now *default server* variables field)
- **host** field was deleted (it's now part of the *default server* url field)
- **basePath** field was deleted (it's now part of the *default server* url field)

**Server**
- **url** field was added
- **description** field was added
- **variables** field was added

A *default server* is synthesized when parsing RAML or OAS 2.

**EndPoint**
- **summary** field was added
- **servers** array field was added

**Operation**
- **callbacks** field was added
- **servers** array field was added

**Callback**
- **name** field was added
- **expression** field was added
- **endpoint** field was added

**Parameter**
- **deprecated** field was added
- **allowEmptyValue** field was added
- **style** field was added
- **explode** field was added
- **allowReserved** field was added
- **payloads** field was added
- **examples** field was added

**Payload**
- **examples** field was added
- **encoding** field was added

**Encoding**
- **propertyName** field was added
- **contentType** field was added
- **headers** array field was added
- **style** field was added
- **explode** field was added
- **allowReserved** field was added

**Request**
- **description** field was added
- **required** field was added
- **cookieParameters** array field was added

**Response**
- **links** field was added

**TemplatedLink**
- **name** field was added
- **description** field was added
- **template** field was added
- **operationId** field was added
- **mapping** array field was added
- **requestBody** field was added
- **server** field was added

**IriTemplateMapping**
- **templateVariable** field was added
- **linkExpression** field was added

**SecurityScheme**
- **withHttpSettings** setting was added
- **withOpenIdConnectSettings** setting was added

**HttpSettings**
- **scheme** field was added
- **bearerFormat** field was added

**OpenIdconnect**
- **url** field was added

## Other changes

- ```resolve``` method now accepts a pipelineId to customize a resolution pipeline.
- ```generateString``` method from ```Renderer``` is now async.

# Changes in AMF 1.2.1

[Released March 19, 2018.](https://github.com/mulesoft/amf/releases/tag/v1.2.1)

AMF 1.2.1 does not introduce any non-backwards-compatible change.

## Examples

Example had a ```value``` field containing the literal string parsed example.
A ```structuredValue``` field was added, containing the parsed example as a ```DataNode```.

## JsonSchema generation

All ```AnyShape``` instances now contains a handy ```toJsonSchema``` method that returns the json schema for the underlying shape.

As well a ```validate(payload)``` method was added to all ```AnyShape``` instances.
