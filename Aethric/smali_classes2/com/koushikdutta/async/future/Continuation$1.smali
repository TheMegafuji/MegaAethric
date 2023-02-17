.class Lcom/koushikdutta/async/future/Continuation$1;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->setCancelCallback(Lcom/koushikdutta/async/future/Cancellable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/Continuation;

.field final synthetic val$cancel:Lcom/koushikdutta/async/future/Cancellable;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/Cancellable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$1;->this$0:Lcom/koushikdutta/async/future/Continuation;

    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation$1;->val$cancel:Lcom/koushikdutta/async/future/Cancellable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$1;->val$cancel:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    return-void
.end method
