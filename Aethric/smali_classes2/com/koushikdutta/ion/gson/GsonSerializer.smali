.class public Lcom/koushikdutta/ion/gson/GsonSerializer;
.super Ljava/lang/Object;
.source "GsonSerializer.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field gson:Lcom/google/gson/Gson;

.field type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/Gson;

    .line 32
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/Gson;

    .line 28
    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

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

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public synthetic lambda$parse$0$GsonSerializer(Lcom/koushikdutta/async/ByteBufferList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;-><init>(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 39
    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonSerializer$3qExlpJlqtvTDYgX7E0HWRtgvPc;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonSerializer$3qExlpJlqtvTDYgX7E0HWRtgvPc;-><init>(Lcom/koushikdutta/ion/gson/GsonSerializer;)V

    .line 37
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataSink;",
            "TT;",
            "Lcom/koushikdutta/async/callback/CompletedCallback;",
            ")V"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 47
    iget-object v2, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, p2, v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 49
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
