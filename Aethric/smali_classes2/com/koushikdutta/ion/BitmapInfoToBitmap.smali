.class Lcom/koushikdutta/ion/BitmapInfoToBitmap;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "BitmapInfoToBitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Landroid/graphics/Bitmap;",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field contextReference:Lcom/koushikdutta/ion/IonContext;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonContext;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapInfoToBitmap;->contextReference:Lcom/koushikdutta/ion/IonContext;

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapInfoToBitmap;->contextReference:Lcom/koushikdutta/ion/IonContext;

    invoke-interface {v0}, Lcom/koushikdutta/ion/IonContext;->isAlive()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/ion/BitmapInfoToBitmap;->cancel()Z

    return-void

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 22
    iget-object p1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/BitmapInfoToBitmap;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/BitmapInfoToBitmap;->setComplete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    check-cast p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/BitmapInfoToBitmap;->transform(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method
