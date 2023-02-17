.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpResponse;
.super Ljava/lang/Object;
.source "AsyncHttpResponse.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# virtual methods
.method public abstract code()I
.end method

.method public abstract detachSocket()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;
.end method

.method public abstract headers()Lcom/koushikdutta/async/http/Headers;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract protocol()Ljava/lang/String;
.end method
