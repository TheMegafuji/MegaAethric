.class Lcom/koushikdutta/async/future/HandlerFuture$1;
.super Ljava/lang/Object;
.source "HandlerFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/HandlerFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/HandlerFuture;

.field final synthetic val$callback:Lcom/koushikdutta/async/future/FutureCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/HandlerFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->this$0:Lcom/koushikdutta/async/future/HandlerFuture;

    iput-object p2, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->this$0:Lcom/koushikdutta/async/future/HandlerFuture;

    iget-object v1, v1, Lcom/koushikdutta/async/future/HandlerFuture;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->this$0:Lcom/koushikdutta/async/future/HandlerFuture;

    iget-object v0, v0, Lcom/koushikdutta/async/future/HandlerFuture;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/async/future/HandlerFuture$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/future/HandlerFuture$1$1;-><init>(Lcom/koushikdutta/async/future/HandlerFuture$1;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
