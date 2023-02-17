.class Lcom/koushikdutta/ion/LoadBitmap;
.super Lcom/koushikdutta/ion/LoadBitmapEmitter;
.source "LoadBitmap.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/LoadBitmapEmitter;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/ion/Response<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;>;"
    }
.end annotation


# instance fields
.field resizeHeight:I

.field resizeWidth:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZIIZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/koushikdutta/ion/LoadBitmapEmitter;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZZ)V

    .line 23
    iput p4, p0, Lcom/koushikdutta/ion/LoadBitmap;->resizeWidth:I

    .line 24
    iput p5, p0, Lcom/koushikdutta/ion/LoadBitmap;->resizeHeight:I

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lcom/koushikdutta/ion/Response<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p2}, Lcom/koushikdutta/ion/Response;->getException()Ljava/lang/Exception;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/LoadBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void

    .line 35
    :cond_1
    invoke-virtual {p2}, Lcom/koushikdutta/ion/Response;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    .line 42
    :cond_2
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/LoadBitmap$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/ion/LoadBitmap$1;-><init>(Lcom/koushikdutta/ion/LoadBitmap;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/ion/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/koushikdutta/ion/Response;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/LoadBitmap;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V

    return-void
.end method
