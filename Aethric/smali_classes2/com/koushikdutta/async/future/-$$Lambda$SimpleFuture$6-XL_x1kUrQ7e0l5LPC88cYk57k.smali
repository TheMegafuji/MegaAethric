.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic f$1:Lcom/koushikdutta/async/future/FailRecoverCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p2, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;->f$1:Lcom/koushikdutta/async/future/FailRecoverCallback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;->f$1:Lcom/koushikdutta/async/future/FailRecoverCallback;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->lambda$failRecover$8(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method
