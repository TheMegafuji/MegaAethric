.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/security/PrivateKey;

.field public final synthetic f$1:Ljava/security/cert/Certificate;

.field public final synthetic f$2:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic f$3:Ljava/net/InetAddress;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/koushikdutta/async/callback/ListenCallback;

.field public final synthetic f$6:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;


# direct methods
.method public synthetic constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$0:Ljava/security/PrivateKey;

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$1:Ljava/security/cert/Certificate;

    iput-object p3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$2:Lcom/koushikdutta/async/AsyncServer;

    iput-object p4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$3:Ljava/net/InetAddress;

    iput p5, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$4:I

    iput-object p6, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$5:Lcom/koushikdutta/async/callback/ListenCallback;

    iput-object p7, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$6:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$0:Ljava/security/PrivateKey;

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$1:Ljava/security/cert/Certificate;

    iget-object v2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$2:Lcom/koushikdutta/async/AsyncServer;

    iget-object v3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$3:Ljava/net/InetAddress;

    iget v4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$4:I

    iget-object v5, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$5:Lcom/koushikdutta/async/callback/ListenCallback;

    iget-object v6, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;->f$6:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->lambda$listenSecure$5(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V

    return-void
.end method
