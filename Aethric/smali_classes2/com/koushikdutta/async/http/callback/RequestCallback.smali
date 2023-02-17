.class public interface abstract Lcom/koushikdutta/async/http/callback/RequestCallback;
.super Ljava/lang/Object;
.source "RequestCallback.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/callback/ResultCallback<",
        "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end method

.method public abstract onProgress(Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
.end method
