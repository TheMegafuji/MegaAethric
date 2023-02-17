.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleCancellable;

.field public final synthetic f$1:Lcom/koushikdutta/async/callback/ConnectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;->f$0:Lcom/koushikdutta/async/future/SimpleCancellable;

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;->f$1:Lcom/koushikdutta/async/callback/ConnectCallback;

    return-void
.end method


# virtual methods
.method public final onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;->f$0:Lcom/koushikdutta/async/future/SimpleCancellable;

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;->f$1:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->lambda$null$1(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void
.end method
