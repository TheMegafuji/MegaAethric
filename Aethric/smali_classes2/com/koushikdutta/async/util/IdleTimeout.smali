.class public Lcom/koushikdutta/async/util/IdleTimeout;
.super Lcom/koushikdutta/async/util/TimeoutBase;
.source "IdleTimeout.java"


# instance fields
.field callback:Ljava/lang/Runnable;

.field cancellable:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;J)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Lcom/koushikdutta/async/AsyncServer;J)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/util/IdleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v1, Lcom/koushikdutta/async/util/-$$Lambda$IdleTimeout$P8KZUCN6rjLTPyK9vzYm_pHXlto;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/util/-$$Lambda$IdleTimeout$P8KZUCN6rjLTPyK9vzYm_pHXlto;-><init>(Lcom/koushikdutta/async/util/IdleTimeout;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$cancel$0$IdleTimeout()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/util/IdleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->cancellable:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->removeAllCallbacks(Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/util/IdleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->cancellable:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/util/IdleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->callback:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/koushikdutta/async/util/IdleTimeout;->delay:J

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/util/IdleTimeout;->cancellable:Ljava/lang/Object;

    return-void
.end method

.method public setTimeout(Ljava/lang/Runnable;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->callback:Ljava/lang/Runnable;

    return-void
.end method
