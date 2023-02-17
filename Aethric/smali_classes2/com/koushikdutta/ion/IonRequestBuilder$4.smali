.class Lcom/koushikdutta/ion/IonRequestBuilder$4;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->resolveAndLoadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

.field final synthetic val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$4;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$4;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 393
    iget-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$4;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$4;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->finalRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 398
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 399
    sget-object p1, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$4$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$4$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-static {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$4;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$4;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->invokeLoadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 389
    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$4;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method
