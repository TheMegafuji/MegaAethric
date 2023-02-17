.class public interface abstract Lcom/koushikdutta/ion/builder/GsonFutureBuilder;
.super Ljava/lang/Object;
.source "GsonFutureBuilder.java"


# virtual methods
.method public abstract as(Lcom/google/gson/reflect/TypeToken;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract as(Ljava/lang/Class;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract asJsonArray()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asJsonArray(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asJsonObject()Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asJsonObject(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end method
