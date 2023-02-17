.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$ZNkXIrqYFVK_O9xAhFgOVLLIhqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/FailRecoverCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/FailConvertCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/FailConvertCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$ZNkXIrqYFVK_O9xAhFgOVLLIhqc;->f$0:Lcom/koushikdutta/async/future/FailConvertCallback;

    return-void
.end method


# virtual methods
.method public final fail(Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$ZNkXIrqYFVK_O9xAhFgOVLLIhqc;->f$0:Lcom/koushikdutta/async/future/FailConvertCallback;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->lambda$failConvert$9(Lcom/koushikdutta/async/future/FailConvertCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
