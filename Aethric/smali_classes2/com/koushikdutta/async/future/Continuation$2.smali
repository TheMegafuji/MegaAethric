.class Lcom/koushikdutta/async/future/Continuation$2;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->wrap()Lcom/koushikdutta/async/callback/CompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mThisCompleted:Z

.field final synthetic this$0:Lcom/koushikdutta/async/future/Continuation;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->mThisCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->mThisCompleted:Z

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->access$002(Lcom/koushikdutta/async/future/Continuation;Z)Z

    if-nez p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    invoke-static {p1}, Lcom/koushikdutta/async/future/Continuation;->access$100(Lcom/koushikdutta/async/future/Continuation;)V

    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V

    return-void
.end method
