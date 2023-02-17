.class Lcom/koushikdutta/ion/IonRequestBuilder$3$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$3;->run()V
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
.field final synthetic this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$3;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 374
    iget-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    iget-object p2, p2, Lcom/koushikdutta/ion/IonRequestBuilder$3;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    iput-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder$3;->inRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 378
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$3;

    iget-object p1, p1, Lcom/koushikdutta/ion/IonRequestBuilder$3;->runner:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 370
    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$3$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method
