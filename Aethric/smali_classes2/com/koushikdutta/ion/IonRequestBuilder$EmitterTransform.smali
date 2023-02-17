.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/future/ResponseFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmitterTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "TT;",
        "Lcom/koushikdutta/ion/Loader$LoaderEmitter;",
        ">;",
        "Lcom/koushikdutta/ion/future/ResponseFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field cancelCallback:Ljava/lang/Runnable;

.field emitter:Lcom/koushikdutta/async/DataEmitter;

.field finalRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field headers:Lcom/koushikdutta/ion/HeadersResponse;

.field initialRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V
    .locals 2

    .line 472
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    .line 473
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cancelCallback:Ljava/lang/Runnable;

    .line 474
    iget-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/IonContext;

    invoke-interface {v0}, Lcom/koushikdutta/ion/IonContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/koushikdutta/ion/Ion;->addFutureInFlight(Lcom/koushikdutta/async/future/Future;Ljava/lang/Object;)V

    .line 475
    iget-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object p2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 478
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v1, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1, p0, v0}, Lcom/koushikdutta/ion/Ion;->addFutureInFlight(Lcom/koushikdutta/async/future/Future;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected cancelCleanup()V
    .locals 1

    .line 486
    invoke-super {p0}, Lcom/koushikdutta/async/future/TransformFuture;->cancelCleanup()V

    .line 487
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method protected error(Ljava/lang/Exception;)V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->access$000(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public getResponse(Ljava/lang/Exception;Ljava/lang/Object;)Lcom/koushikdutta/ion/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;"
        }
    .end annotation

    .line 452
    new-instance v6, Lcom/koushikdutta/ion/Response;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->finalRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->headers:Lcom/koushikdutta/ion/HeadersResponse;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/Response;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getDataEmitter()Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 502
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getServedFrom()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 503
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getHeaders()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->headers:Lcom/koushikdutta/ion/HeadersResponse;

    .line 504
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->finalRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 506
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->headersCallback:Lcom/koushikdutta/ion/HeadersCallback;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->getHeaders()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/ion/HeadersResponse;)V

    invoke-static {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 518
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->length()J

    move-result-wide v0

    .line 520
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/DataEmitter;

    instance-of v2, p1, Lcom/koushikdutta/async/DataTrackingEmitter;

    if-nez v2, :cond_1

    .line 521
    new-instance p1, Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-direct {p1}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 522
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataTrackingEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_0

    .line 525
    :cond_1
    check-cast p1, Lcom/koushikdutta/async/DataTrackingEmitter;

    .line 527
    :goto_0
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 528
    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;J)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataTrackingEmitter;->setDataTracker(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V

    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 443
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method

.method public withResponse()Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;>;"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 458
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 468
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object v0
.end method
