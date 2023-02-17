.class public Lcom/koushikdutta/ion/LoadDeepZoom;
.super Lcom/koushikdutta/ion/LoadBitmapEmitter;
.source "LoadDeepZoom.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/LoadBitmapEmitter;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/ion/Response<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field fileCache:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZLcom/koushikdutta/async/util/FileCache;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/koushikdutta/ion/LoadBitmapEmitter;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZZ)V

    .line 31
    iput-object p4, p0, Lcom/koushikdutta/ion/LoadDeepZoom;->fileCache:Lcom/koushikdutta/async/util/FileCache;

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
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p2}, Lcom/koushikdutta/ion/Response;->getException()Ljava/lang/Exception;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/LoadDeepZoom;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/koushikdutta/ion/Response;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/LoadDeepZoom;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/LoadDeepZoom$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/ion/LoadDeepZoom$1;-><init>(Lcom/koushikdutta/ion/LoadDeepZoom;Ljava/io/File;Lcom/koushikdutta/ion/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/koushikdutta/ion/Response;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/LoadDeepZoom;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V

    return-void
.end method
