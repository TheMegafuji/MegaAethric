.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic f$1:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p2, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;->f$1:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;->f$1:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->lambda$setComplete$1$SimpleFuture(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method
