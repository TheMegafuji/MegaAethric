.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshake(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;->val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;->val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-interface {v1, p1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;->val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "socket closed during handshake"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    :goto_0
    return-void
.end method
