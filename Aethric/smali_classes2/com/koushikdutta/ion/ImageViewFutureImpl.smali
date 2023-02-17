.class Lcom/koushikdutta/ion/ImageViewFutureImpl;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "ImageViewFutureImpl.java"

# interfaces
.implements Lcom/koushikdutta/ion/future/ImageViewFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Landroid/widget/ImageView;",
        "Lcom/koushikdutta/ion/IonDrawable;",
        ">;",
        "Lcom/koushikdutta/ion/future/ImageViewFuture;"
    }
.end annotation


# static fields
.field public static final FUTURE_IMAGEVIEW_NULL_URI:Lcom/koushikdutta/ion/ImageViewFutureImpl;


# instance fields
.field private imageViewRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

.field private inAnimation:Landroid/view/animation/Animation;

.field private inAnimationResource:I

.field private scaleMode:Lcom/koushikdutta/ion/ScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/koushikdutta/ion/ImageViewFutureImpl$1;

    invoke-direct {v0}, Lcom/koushikdutta/ion/ImageViewFutureImpl$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->FUTURE_IMAGEVIEW_NULL_URI:Lcom/koushikdutta/ion/ImageViewFutureImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method

.method public static applyScaleMode(Landroid/widget/ImageView;Lcom/koushikdutta/ion/ScaleMode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/koushikdutta/ion/ImageViewFutureImpl$3;->$SwitchMap$com$koushikdutta$ion$ScaleMode:[I

    invoke-virtual {p1}, Lcom/koushikdutta/ion/ScaleMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 114
    :cond_2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 111
    :cond_3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 108
    :cond_4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public static getOrCreateImageViewFuture(Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;Lcom/koushikdutta/ion/IonDrawable;)Lcom/koushikdutta/ion/ImageViewFutureImpl;
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/koushikdutta/ion/IonDrawable;->getLoadCallback()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    instance-of v0, v0, Lcom/koushikdutta/ion/ImageViewFutureImpl;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/koushikdutta/ion/IonDrawable;->getLoadCallback()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/ImageViewFutureImpl;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/koushikdutta/ion/ImageViewFutureImpl;

    invoke-direct {v0}, Lcom/koushikdutta/ion/ImageViewFutureImpl;-><init>()V

    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setLoadCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/ion/IonDrawable;

    .line 35
    iput-object p0, v0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->imageViewRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    return-object v0
.end method


# virtual methods
.method public setInAnimation(Landroid/view/animation/Animation;I)Lcom/koushikdutta/ion/ImageViewFutureImpl;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->inAnimation:Landroid/view/animation/Animation;

    .line 94
    iput p2, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->inAnimationResource:I

    return-object p0
.end method

.method public setScaleMode(Lcom/koushikdutta/ion/ScaleMode;)Lcom/koushikdutta/ion/ImageViewFutureImpl;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    return-object p0
.end method

.method protected transform(Lcom/koushikdutta/ion/IonDrawable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->imageViewRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->imageViewRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->isAlive()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->cancelSilently()Z

    return-void

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/ion/IonDrawable;->getBitmapInfo()Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->applyScaleMode(Landroid/widget/ImageView;Lcom/koushikdutta/ion/ScaleMode;)V

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->inAnimation:Landroid/view/animation/Animation;

    iget v2, p0, Lcom/koushikdutta/ion/ImageViewFutureImpl;->inAnimationResource:I

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->doAnimation(Landroid/widget/ImageView;Landroid/view/animation/Animation;I)V

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setComplete(Ljava/lang/Object;)Z

    return-void

    .line 48
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->cancelSilently()Z

    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/koushikdutta/ion/IonDrawable;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->transform(Lcom/koushikdutta/ion/IonDrawable;)V

    return-void
.end method

.method public withBitmapInfo()Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/ion/ImageViewBitmapInfo;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 72
    new-instance v1, Lcom/koushikdutta/ion/ImageViewFutureImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/ImageViewFutureImpl$2;-><init>(Lcom/koushikdutta/ion/ImageViewFutureImpl;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object v0
.end method
