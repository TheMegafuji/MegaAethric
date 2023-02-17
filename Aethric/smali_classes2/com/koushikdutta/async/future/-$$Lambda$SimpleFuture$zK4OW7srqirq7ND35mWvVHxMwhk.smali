.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$zK4OW7srqirq7ND35mWvVHxMwhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenFutureCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/ThenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/ThenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$zK4OW7srqirq7ND35mWvVHxMwhk;->f$0:Lcom/koushikdutta/async/future/ThenCallback;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$zK4OW7srqirq7ND35mWvVHxMwhk;->f$0:Lcom/koushikdutta/async/future/ThenCallback;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->lambda$thenConvert$6(Lcom/koushikdutta/async/future/ThenCallback;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
