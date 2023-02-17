.class Lcom/koushikdutta/async/util/TimeoutBase$2;
.super Ljava/lang/Object;
.source "TimeoutBase.java"

# interfaces
.implements Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/util/TimeoutBase;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/TimeoutBase;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/util/TimeoutBase$2;->this$0:Lcom/koushikdutta/async/util/TimeoutBase;

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public removeAllCallbacks(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$2;->val$handler:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
