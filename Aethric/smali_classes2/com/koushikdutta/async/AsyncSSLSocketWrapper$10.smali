.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljavax/net/ssl/SSLContext;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conf:Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

.field final synthetic val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

.field final synthetic val$port:I

.field final synthetic val$sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(ILcom/koushikdutta/async/http/SSLEngineSNIConfigurator;Ljavax/net/ssl/SSLContext;Lcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    .line 786
    iput p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$port:I

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$conf:Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$sslContext:Ljavax/net/ssl/SSLContext;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAccepted$0(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 799
    invoke-interface {p0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void

    .line 802
    :cond_0
    invoke-interface {p1, p3}, Lcom/koushikdutta/async/callback/ListenCallback;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 8

    .line 789
    iget v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$port:I

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$conf:Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;->createEngine(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    new-instance v7, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$10$UTgI7AdbJP-5Uiia0rZ4k7CPcw8;

    invoke-direct {v7, p1, v0}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$10$UTgI7AdbJP-5Uiia0rZ4k7CPcw8;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;)V

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

    .line 813
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method public onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V

    return-void
.end method
