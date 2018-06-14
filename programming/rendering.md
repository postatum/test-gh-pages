# Rendering

Renderers can be found at package ```amf.client.render```. All render methods are asynchronous, and either returns a promise/future as a result, or receives an async handler.

## RAML 1.0 rendering

### Render file with future

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/main/java/co/acme/render/Raml10Rendering.java#raml-10-render-file-future)
{%- endcodetabs %}

### Render file with handler

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/main/java/co/acme/render/Raml10Rendering.java#raml-10-render-file-handler)
{%- endcodetabs %}

### Render string with future

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/main/java/co/acme/render/Raml10Rendering.java#raml-10-render-string-future)
{%- endcodetabs %}


### Render string with handler

{% codetabs name="Java", type="java" -%}
[example-raw](https://raw.githubusercontent.com/mulesoft/amf-examples/v1.3.1/src/main/java/co/acme/render/Raml10Rendering.java#raml-10-render-string-handler)
{%- endcodetabs %}
