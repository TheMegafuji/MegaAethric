.class public Lcom/koushikdutta/async/future/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$loopUntil$0(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/Futures;->loopUntil(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;)V

    return-void
.end method

.method public static loopUntil(Ljava/lang/Iterable;Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TF;>;",
            "Lcom/koushikdutta/async/future/ThenFutureCallback<",
            "TT;TF;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 63
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/koushikdutta/async/future/Futures;->loopUntil(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static loopUntil([Ljava/lang/Object;Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">([TF;",
            "Lcom/koushikdutta/async/future/ThenFutureCallback<",
            "TT;TF;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Futures;->loopUntil(Ljava/lang/Iterable;Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method private static loopUntil(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TF;>;",
            "Lcom/koushikdutta/async/future/ThenFutureCallback<",
            "TT;TF;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/koushikdutta/async/future/ThenFutureCallback;->then(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$yA0E4MQeNDHgWOYz3s7hI7v-Zm8;

    invoke-direct {v0, p2}, Lcom/koushikdutta/async/future/-$$Lambda$yA0E4MQeNDHgWOYz3s7hI7v-Zm8;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;)V

    .line 47
    invoke-interface {p3, v0}, Lcom/koushikdutta/async/future/Future;->success(Lcom/koushikdutta/async/future/SuccessCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p3

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/future/-$$Lambda$Futures$0EOWwemzojKwu8p_TvMGRD4ZPAM;-><init>(Ljava/util/Iterator;Lcom/koushikdutta/async/future/ThenFutureCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    .line 48
    invoke-interface {p3, v0}, Lcom/koushikdutta/async/future/Future;->fail(Lcom/koushikdutta/async/future/FailCallback;)Lcom/koushikdutta/async/future/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 56
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "empty list"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    :goto_1
    return-void
.end method

.method public static waitAll(Ljava/util/List;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-object v1

    .line 19
    :cond_0
    new-instance v2, Lcom/koushikdutta/async/future/Futures$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/koushikdutta/async/future/Futures$1;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/koushikdutta/async/future/SimpleFuture;)V

    const/4 v0, 0x0

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/future/Future;

    invoke-interface {p0, v2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-object v1
.end method

.method public static varargs waitAll([Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/future/Futures;->waitAll(Ljava/util/List;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method
