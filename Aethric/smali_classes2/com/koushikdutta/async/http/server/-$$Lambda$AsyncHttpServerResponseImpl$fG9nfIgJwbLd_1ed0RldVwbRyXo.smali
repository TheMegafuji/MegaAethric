.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field public final synthetic f$1:Lcom/koushikdutta/async/ByteBufferList;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;->f$1:Lcom/koushikdutta/async/ByteBufferList;

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;->f$1:Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->lambda$send$4$AsyncHttpServerResponseImpl(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V

    return-void
.end method
