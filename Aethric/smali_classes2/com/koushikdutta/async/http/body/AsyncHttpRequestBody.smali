.class public interface abstract Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
.super Ljava/lang/Object;
.source "AsyncHttpRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract length()I
.end method

.method public abstract parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method

.method public abstract readFullyOnRequest()Z
.end method

.method public abstract write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method
