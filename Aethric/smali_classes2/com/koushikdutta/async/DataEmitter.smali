.class public interface abstract Lcom/koushikdutta/async/DataEmitter;
.super Ljava/lang/Object;
.source "DataEmitter.java"


# virtual methods
.method public abstract charset()Ljava/lang/String;
.end method

.method public abstract close()V
.end method

.method public abstract getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
.end method

.method public abstract getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
.end method

.method public abstract getServer()Lcom/koushikdutta/async/AsyncServer;
.end method

.method public abstract isChunked()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
.end method

.method public abstract setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method
