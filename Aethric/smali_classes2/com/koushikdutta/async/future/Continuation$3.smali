.class Lcom/koushikdutta/async/future/Continuation$3;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/future/DependentFuture;)Lcom/koushikdutta/async/future/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/Continuation;

.field final synthetic val$future:Lcom/koushikdutta/async/future/DependentFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/DependentFuture;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$3;->this$0:Lcom/koushikdutta/async/future/Continuation;

    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation$3;->val$future:Lcom/koushikdutta/async/future/DependentFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/koushikdutta/async/future/Continuation$3;->val$future:Lcom/koushikdutta/async/future/DependentFuture;

    invoke-interface {p1}, Lcom/koushikdutta/async/future/DependentFuture;->get()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 102
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
