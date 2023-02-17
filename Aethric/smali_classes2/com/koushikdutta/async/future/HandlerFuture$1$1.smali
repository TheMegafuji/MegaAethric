.class Lcom/koushikdutta/async/future/HandlerFuture$1$1;
.super Ljava/lang/Object;
.source "HandlerFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/HandlerFuture$1;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/future/HandlerFuture$1;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/HandlerFuture$1;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->this$1:Lcom/koushikdutta/async/future/HandlerFuture$1;

    iput-object p2, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->val$e:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->this$1:Lcom/koushikdutta/async/future/HandlerFuture$1;

    iget-object v1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->val$e:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/future/HandlerFuture$1;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
