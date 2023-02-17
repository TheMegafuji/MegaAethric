.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseHead"
.end annotation


# virtual methods
.method public abstract code()I
.end method

.method public abstract code(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.end method

.method public abstract emitter()Lcom/koushikdutta/async/DataEmitter;
.end method

.method public abstract emitter(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.end method

.method public abstract headers(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.end method

.method public abstract headers()Lcom/koushikdutta/async/http/Headers;
.end method

.method public abstract message(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.end method

.method public abstract protocol()Ljava/lang/String;
.end method

.method public abstract sink()Lcom/koushikdutta/async/DataSink;
.end method

.method public abstract sink(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.end method

.method public abstract socket()Lcom/koushikdutta/async/AsyncSocket;
.end method
