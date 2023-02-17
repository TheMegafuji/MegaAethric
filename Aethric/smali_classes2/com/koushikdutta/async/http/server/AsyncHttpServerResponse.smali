.class public interface abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponse.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# virtual methods
.method public abstract code()I
.end method

.method public abstract code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
.end method

.method public abstract end()V
.end method

.method public abstract getHeaders()Lcom/koushikdutta/async/http/Headers;
.end method

.method public abstract getHttpVersion()Ljava/lang/String;
.end method

.method public abstract getRequest()Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.end method

.method public abstract getSocket()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract onCompleted(Ljava/lang/Exception;)V
.end method

.method public abstract proxy(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end method

.method public abstract redirect(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V
.end method

.method public abstract send(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract send(Ljava/lang/String;[B)V
.end method

.method public abstract send(Lorg/json/JSONArray;)V
.end method

.method public abstract send(Lorg/json/JSONObject;)V
.end method

.method public abstract sendBody(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract sendFile(Ljava/io/File;)V
.end method

.method public abstract sendStream(Ljava/io/InputStream;J)V
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setHttpVersion(Ljava/lang/String;)V
.end method

.method public abstract setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
.end method

.method public abstract writeHead()V
.end method
