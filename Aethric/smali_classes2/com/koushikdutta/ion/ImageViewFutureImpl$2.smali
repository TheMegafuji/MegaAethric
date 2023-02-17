.class Lcom/koushikdutta/ion/ImageViewFutureImpl$2;
.super Ljava/lang/Object;
.source "ImageViewFutureImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/ImageViewFutureImpl;->withBitmapInfo()Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/ImageViewFutureImpl;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/ImageViewFutureImpl;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl$2;->this$0:Lcom/koushikdutta/ion/ImageViewFutureImpl;

    iput-object p2, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Landroid/widget/ImageView;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/koushikdutta/ion/ImageViewBitmapInfo;

    invoke-direct {v0}, Lcom/koushikdutta/ion/ImageViewBitmapInfo;-><init>()V

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    instance-of v2, v1, Lcom/koushikdutta/ion/IonDrawable;

    if-eqz v2, :cond_1

    .line 80
    check-cast v1, Lcom/koushikdutta/ion/IonDrawable;

    .line 81
    invoke-virtual {v1}, Lcom/koushikdutta/ion/IonDrawable;->getBitmapInfo()Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/ion/ImageViewBitmapInfo;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    .line 83
    :cond_1
    iput-object p1, v0, Lcom/koushikdutta/ion/ImageViewBitmapInfo;->exception:Ljava/lang/Exception;

    .line 84
    iput-object p2, v0, Lcom/koushikdutta/ion/ImageViewBitmapInfo;->imageView:Landroid/widget/ImageView;

    .line 85
    iget-object p1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/ImageViewFutureImpl$2;->onCompleted(Ljava/lang/Exception;Landroid/widget/ImageView;)V

    return-void
.end method
