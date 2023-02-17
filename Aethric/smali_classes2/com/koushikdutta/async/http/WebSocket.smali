.class public interface abstract Lcom/koushikdutta/async/http/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/WebSocket$PongCallback;,
        Lcom/koushikdutta/async/http/WebSocket$PingCallback;,
        Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    }
.end annotation


# virtual methods
.method public abstract getPongCallback()Lcom/koushikdutta/async/http/WebSocket$PongCallback;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getSocket()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract getStringCallback()Lcom/koushikdutta/async/http/WebSocket$StringCallback;
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract ping(Ljava/lang/String;)V
.end method

.method public abstract pong(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract send([B)V
.end method

.method public abstract send([BII)V
.end method

.method public abstract setPingCallback(Lcom/koushikdutta/async/http/WebSocket$PingCallback;)V
.end method

.method public abstract setPongCallback(Lcom/koushikdutta/async/http/WebSocket$PongCallback;)V
.end method

.method public abstract setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V
.end method
