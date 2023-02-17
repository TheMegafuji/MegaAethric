.class public final synthetic Lcom/koushikdutta/ion/-$$Lambda$Ion$E3eqdUvPQZmGquO5jYa02vf9T6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic f$1:Lcom/koushikdutta/async/callback/ValueFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/callback/ValueFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/ion/-$$Lambda$Ion$E3eqdUvPQZmGquO5jYa02vf9T6M;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p2, p0, Lcom/koushikdutta/ion/-$$Lambda$Ion$E3eqdUvPQZmGquO5jYa02vf9T6M;->f$1:Lcom/koushikdutta/async/callback/ValueFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/ion/-$$Lambda$Ion$E3eqdUvPQZmGquO5jYa02vf9T6M;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/ion/-$$Lambda$Ion$E3eqdUvPQZmGquO5jYa02vf9T6M;->f$1:Lcom/koushikdutta/async/callback/ValueFunction;

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/Ion;->lambda$submitBackgroundTask$0(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/callback/ValueFunction;)V

    return-void
.end method
