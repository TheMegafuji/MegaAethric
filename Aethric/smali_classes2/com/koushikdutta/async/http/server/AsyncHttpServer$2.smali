.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;->listenSecure(ILjavax/net/ssl/SSLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

.field final synthetic val$port:I

.field final synthetic val$sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;ILjavax/net/ssl/SSLContext;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iput p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$port:I

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$sslContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 8

    .line 288
    iget v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$port:I

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    new-instance v7, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2$1;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshake(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method public onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V

    return-void
.end method
