# Object Oriented Model

AMF provides an object oriented model to build, modify, and traverse through units and elements. Each plugin exposes different classes matching specific domains.

##Fields

Fields on classes are usually wrapped with a convenient class to avoid the use of `null / undefined`. These field wrappers are defined on package ```amf.client.model```.

Available field wrappers are `StrField`, `IntField`, `BoolField`, `DoubleField`, `FloatField`, and `AnyField`.

###Accessing defined field


```Java
package co.acme.model;

import amf.client.AMF;
import amf.client.model.StrField;
import amf.client.model.document.BaseUnit;
import amf.client.model.document.Document;
import amf.client.model.domain.DomainExtension;
import amf.client.model.domain.ScalarNode;
import amf.client.model.domain.WebApi;
import amf.client.parse.Raml10Parser;
import amf.core.parser.Range;
import org.junit.Test;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutionException;

import static org.assertj.core.api.Assertions.assertThat;

public class Fields {

  @Test public void fieldAccessors() throws InterruptedException, ExecutionException, IOException {
    AMF.init().get();

    /* Parsing Raml 10 with specified file returning future. */
    final BaseUnit result = new Raml10Parser().parseFileAsync("file://src/main/resources/examples/banking-api.raml").get();

    final WebApi model = (WebApi) ((Document) result).encodes();
    model.withName("value");

    //#field-defined
    /* Accessing defined field on model. */
    final StrField defined = model.name();
    assertThat( defined.option()                              ).isPresent();
    assertThat( defined.value()                               ).isNotEmpty();
    assertThat( defined.nonNull()                             ).isTrue();
    assertThat( defined.isNull()                              ).isFalse();
    assertThat( defined.isNullOrEmpty()                       ).isFalse();
    assertThat( defined.nonEmpty()                            ).isTrue();
    assertThat( defined.is("value")                           ).isTrue();
    assertThat( defined.is(v -> v.equals("value"))            ).isTrue();
    //#field-defined

    //#field-undefined
    /* Accessing null/undefined field on model. */
    final StrField undefined = model.description();
    assertThat( undefined.option()                              ).isEmpty();
    assertThat( undefined.value()                               ).isNull(); // Defaults: String -> null, Int -> 0, Boolean -> false
    assertThat( undefined.nonNull()                             ).isFalse();
    assertThat( undefined.isNull()                              ).isTrue();
    assertThat( undefined.isNullOrEmpty()                       ).isTrue();
    assertThat( undefined.nonEmpty()                            ).isFalse();
    assertThat( undefined.is("")                                ).isFalse(); // `is` is always false for null / undefined values
    assertThat( undefined.is((String) null)                     ).isFalse(); // `is` is always false for null / undefined values
    assertThat( undefined.is(v1 -> v1 == null || v1.equals("")) ).isFalse(); // `is` is always false for null / undefined values
    //#field-undefined
  }
}
```
