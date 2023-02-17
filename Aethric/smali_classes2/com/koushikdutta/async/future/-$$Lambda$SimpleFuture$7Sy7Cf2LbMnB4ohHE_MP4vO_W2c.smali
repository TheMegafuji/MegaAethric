.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/DoneCallback;

.field public final synthetic f$1:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;->f$0:Lcom/koushikdutta/async/future/DoneCallback;

    iput-object p2, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;->f$1:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;->f$0:Lcom/koushikdutta/async/future/DoneCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;->f$1:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->lambda$done$3(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method
