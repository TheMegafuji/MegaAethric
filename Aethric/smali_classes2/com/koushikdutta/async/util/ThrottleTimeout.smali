.class public Lcom/koushikdutta/async/util/ThrottleTimeout;
.super Lcom/koushikdutta/async/util/TimeoutBase;
.source "ThrottleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/util/TimeoutBase;"
    }
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/callback/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field cancellable:Ljava/lang/Object;

.field throttleMode:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

.field values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLcom/koushikdutta/async/callback/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Landroid/os/Handler;J)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->values:Ljava/util/ArrayList;

    .line 17
    sget-object p1, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->throttleMode:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    .line 40
    iput-object p4, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->callback:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;JLcom/koushikdutta/async/callback/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "J",
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Lcom/koushikdutta/async/AsyncServer;J)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->values:Ljava/util/ArrayList;

    .line 17
    sget-object p1, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->throttleMode:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    .line 35
    iput-object p4, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->callback:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method public static synthetic lambda$ajboVDxkSfpxife7p2rOo4m6gJ0(Lcom/koushikdutta/async/util/ThrottleTimeout;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/util/ThrottleTimeout;->runCallback()V

    return-void
.end method

.method private runCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->cancellable:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->values:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    iget-object v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->callback:Lcom/koushikdutta/async/callback/ValueCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/ValueCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$postThrottled$0$ThrottleTimeout(Ljava/lang/Object;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->throttleMode:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    sget-object v0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->cancellable:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v0, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$ajboVDxkSfpxife7p2rOo4m6gJ0;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$ajboVDxkSfpxife7p2rOo4m6gJ0;-><init>(Lcom/koushikdutta/async/util/ThrottleTimeout;)V

    iget-wide v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->delay:J

    invoke-interface {p1, v0, v1, v2}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->cancellable:Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->cancellable:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/koushikdutta/async/util/ThrottleTimeout;->runCallback()V

    .line 70
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v0, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$ajboVDxkSfpxife7p2rOo4m6gJ0;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$ajboVDxkSfpxife7p2rOo4m6gJ0;-><init>(Lcom/koushikdutta/async/util/ThrottleTimeout;)V

    iget-wide v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->delay:J

    invoke-interface {p1, v0, v1, v2}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->cancellable:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized postThrottled(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v1, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;-><init>(Lcom/koushikdutta/async/util/ThrottleTimeout;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCallback(Lcom/koushikdutta/async/callback/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->callback:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method public setThrottleMode(Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->throttleMode:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    return-void
.end method
