.class public abstract Lcom/koushikdutta/ion/gson/GsonParser;
.super Ljava/lang/Object;
.source "GsonParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/gson/JsonElement;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field

.field forcedCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/gson/GsonParser;-><init>(Ljava/lang/Class;)V

    .line 32
    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser;->forcedCharset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public getMime()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public synthetic lambda$parse$0$GsonParser(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)Lcom/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 41
    new-instance v1, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;

    invoke-direct {v1, p2}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;-><init>(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 43
    iget-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser;->forcedCharset:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    .line 44
    new-instance p1, Ljava/io/InputStreamReader;

    iget-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser;->forcedCharset:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 46
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    :goto_0
    new-instance p2, Lcom/google/gson/stream/JsonReader;

    invoke-direct {p2, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p2

    if-nez p2, :cond_3

    .line 52
    iget-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 53
    :cond_2
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be casted to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 51
    :cond_3
    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string p2, "unable to parse json"

    invoke-direct {p1, p2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->charset()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v1, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;-><init>(Lcom/koushikdutta/ion/gson/GsonParser;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1, v1}, Lcom/koushikdutta/async/future/Future;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Lcom/google/gson/JsonElement;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataSink;",
            "TT;",
            "Lcom/koushikdutta/async/callback/CompletedCallback;",
            ")V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/parser/StringParser;->write(Lcom/koushikdutta/async/DataSink;Ljava/lang/String;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public bridge synthetic write(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/gson/GsonParser;->write(Lcom/koushikdutta/async/DataSink;Lcom/google/gson/JsonElement;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
