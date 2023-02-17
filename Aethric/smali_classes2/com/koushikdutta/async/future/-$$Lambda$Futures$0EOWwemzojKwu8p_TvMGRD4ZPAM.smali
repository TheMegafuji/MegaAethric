.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/FailCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/Iterator;

.field public final synthetic f$1:Lcom/koushikdutta/async/future/ThenFutureCallback;

.field public final synthetic f$2:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;->f$0:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;->f$1:Lcom/koushikdutta/async/future/ThenFutureCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;->f$2:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final fail(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;->f$0:Ljava/util/Iterator;

    iget-object v1, p0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;->f$1:Lcom/koushikdutta/async/future/ThenFutureCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;->f$2:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {v0, v1, v2, p1}, Lcom/koushikdutta/async/future/Futures;->lambda$loopUntil$0(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;)V

    return-void
.end method
