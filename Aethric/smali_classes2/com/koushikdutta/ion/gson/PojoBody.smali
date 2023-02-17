.class public Lcom/koushikdutta/ion/gson/PojoBody;
.super Ljava/lang/Object;
.source "PojoBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field bodyBytes:[B

.field gson:Lcom/google/gson/Gson;

.field pojo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "TT;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/koushikdutta/ion/gson/PojoBody;->pojo:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    iput-object p3, p0, Lcom/koushikdutta/ion/gson/PojoBody;->type:Ljava/lang/reflect/Type;

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/PojoBody;->gson:Lcom/google/gson/Gson;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "must provide a non-primitive type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/PojoBody;->pojo:Ljava/lang/Object;

    return-object v0
.end method

.method getBodyBytes()[B
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/PojoBody;->bodyBytes:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 39
    iget-object v2, p0, Lcom/koushikdutta/ion/gson/PojoBody;->type:Ljava/lang/reflect/Type;

    if-nez v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/koushikdutta/ion/gson/PojoBody;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/koushikdutta/ion/gson/PojoBody;->pojo:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/ion/gson/PojoBody;->gson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/koushikdutta/ion/gson/PojoBody;->pojo:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 44
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/gson/PojoBody;->bodyBytes:[B

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/ion/gson/PojoBody;->getBodyBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/koushikdutta/ion/gson/PojoBody;->getBodyBytes()[B

    move-result-object p1

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
