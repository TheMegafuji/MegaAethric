.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLServerSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->lambda$listenSecure$5(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cert:Ljava/security/cert/Certificate;

.field final synthetic val$pk:Ljava/security/PrivateKey;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncServerSocket;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$pk:Ljava/security/PrivateKey;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$cert:Ljava/security/cert/Certificate;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$socket:Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$cert:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$socket:Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$pk:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->val$socket:Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncServerSocket;->stop()V

    return-void
.end method
