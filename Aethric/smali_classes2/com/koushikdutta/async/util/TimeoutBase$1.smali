.class Lcom/koushikdutta/async/util/TimeoutBase$1;
.super Ljava/lang/Object;
.source "TimeoutBase.java"

# interfaces
.implements Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Lcom/koushikdutta/async/AsyncServer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/util/TimeoutBase;

.field final synthetic val$server:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/TimeoutBase;Lcom/koushikdutta/async/AsyncServer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->this$0:Lcom/koushikdutta/async/util/TimeoutBase;

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->val$server:Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->val$server:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->val$server:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public removeAllCallbacks(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    check-cast p1, Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    return-void
.end method
