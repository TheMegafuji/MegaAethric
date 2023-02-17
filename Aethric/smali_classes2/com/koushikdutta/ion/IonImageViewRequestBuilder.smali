.class public Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
.super Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
.source "IonImageViewRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/builder/Builders$IV$F;
.implements Lcom/koushikdutta/ion/builder/ImageViewFutureBuilder;


# instance fields
.field bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

.field crossfade:Z

.field errorDrawable:Landroid/graphics/drawable/Drawable;

.field errorResource:I

.field fadeIn:Z

.field imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

.field inAnimation:Landroid/view/animation/Animation;

.field inAnimationResource:I

.field loadAnimation:Landroid/view/animation/Animation;

.field loadAnimationResource:I

.field placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field placeholderResource:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;-><init>(Lcom/koushikdutta/ion/Ion;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->fadeIn:Z

    .line 34
    sget-object p1, Lcom/koushikdutta/ion/BitmapDrawableFactory;->DEFAULT:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->fadeIn:Z

    .line 34
    sget-object p1, Lcom/koushikdutta/ion/BitmapDrawableFactory;->DEFAULT:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    return-void
.end method

.method private static getAdjustViewBounds(Landroid/widget/ImageView;)Z
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->getAdjustViewBounds_16(Landroid/widget/ImageView;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAdjustViewBounds_16(Landroid/widget/ImageView;)Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAdjustViewBounds()Z

    move-result p0

    return p0
.end method

.method private getImageViewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setIonDrawable(Landroid/widget/ImageView;Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 91
    iget-object v1, p2, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    move-object p2, v0

    .line 95
    :cond_1
    invoke-static {p1}, Lcom/koushikdutta/ion/IonDrawable;->getOrCreateIonDrawable(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 96
    invoke-virtual {v0, v2}, Lcom/koushikdutta/ion/IonDrawable;->ion(Lcom/koushikdutta/ion/Ion;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1, p3}, Lcom/koushikdutta/ion/IonDrawable;->setBitmap(Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p3

    .line 98
    invoke-virtual {p3, p2}, Lcom/koushikdutta/ion/IonDrawable;->setBitmapFetcher(Lcom/koushikdutta/ion/BitmapFetcher;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    iget-object p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 99
    :goto_1
    invoke-virtual {p2, p3}, Lcom/koushikdutta/ion/IonDrawable;->setRepeatAnimation(Z)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    iget p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->resizeWidth:I

    iget v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->resizeHeight:I

    .line 100
    invoke-virtual {p2, p3, v0}, Lcom/koushikdutta/ion/IonDrawable;->setSize(II)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    iget p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->errorResource:I

    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p2, p3, v0}, Lcom/koushikdutta/ion/IonDrawable;->setError(ILandroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    iget p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholderResource:I

    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p2, p3, v0}, Lcom/koushikdutta/ion/IonDrawable;->setPlaceholder(ILandroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    iget-boolean p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->fadeIn:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->crossfade:Z

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {p2, v1}, Lcom/koushikdutta/ion/IonDrawable;->setFadeIn(Z)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    iget-object p3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    .line 104
    invoke-virtual {p2, p3}, Lcom/koushikdutta/ion/IonDrawable;->setBitmapDrawableFactory(Lcom/koushikdutta/ion/BitmapDrawableFactory;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lcom/koushikdutta/ion/IonDrawable;->updateLayers()Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method


# virtual methods
.method public bridge synthetic addDefaultTransform()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->addDefaultTransform()V

    return-void
.end method

.method public bridge synthetic animateGif(Lcom/koushikdutta/ion/builder/AnimateGifMode;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGif(Lcom/koushikdutta/ion/builder/AnimateGifMode;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public animateIn(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 274
    iput p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimationResource:I

    return-object p0
.end method

.method public animateIn(Landroid/view/animation/Animation;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public bridge synthetic animateIn(I)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->animateIn(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animateIn(Landroid/view/animation/Animation;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->animateIn(Landroid/view/animation/Animation;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public animateLoad(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 268
    iput p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->loadAnimationResource:I

    return-object p0
.end method

.method public animateLoad(Landroid/view/animation/Animation;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->loadAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public bridge synthetic animateLoad(I)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->animateLoad(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animateLoad(Landroid/view/animation/Animation;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->animateLoad(Landroid/view/animation/Animation;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asBitmap()Lcom/koushikdutta/async/future/Future;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->asBitmap()Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public bitmapDrawableFactory(Lcom/koushikdutta/ion/BitmapDrawableFactory;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    return-object p0
.end method

.method public bridge synthetic bitmapDrawableFactory(Lcom/koushikdutta/ion/BitmapDrawableFactory;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->bitmapDrawableFactory(Lcom/koushikdutta/ion/BitmapDrawableFactory;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic centerCrop()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->centerCrop()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->centerInside()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public crossfade(Z)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->crossfade:Z

    return-object p0
.end method

.method public bridge synthetic crossfade(Z)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->crossfade(Z)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deepZoom()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBuilder()Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/ion/ContextReference;->fromContext(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonContext;Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object v0
.end method

.method public error(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 250
    iput p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->errorResource:I

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->error(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fadeIn(Z)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->fadeIn:Z

    return-object p0
.end method

.method public bridge synthetic fadeIn(Z)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->fadeIn(Z)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->fitCenter()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitXY()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->fitXY()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 198
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->getImageViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 201
    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 202
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1
    instance-of v2, v0, Lcom/koushikdutta/ion/IonDrawable;

    if-nez v2, :cond_2

    return-object v1

    .line 205
    :cond_2
    check-cast v0, Lcom/koushikdutta/ion/IonDrawable;

    .line 206
    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonDrawable;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 208
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getBitmapInfo()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 3

    .line 214
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->getImageViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    instance-of v2, v0, Lcom/koushikdutta/ion/IonDrawable;

    if-nez v2, :cond_1

    return-object v1

    .line 219
    :cond_1
    check-cast v0, Lcom/koushikdutta/ion/IonDrawable;

    .line 220
    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonDrawable;->getBitmapInfo()Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;
    .locals 4

    if-eqz p1, :cond_5

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_NETWORK:Lcom/koushikdutta/ion/ResponseServedFrom;

    invoke-direct {p0, p1, v1, v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->setIonDrawable(Landroid/widget/ImageView;Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/koushikdutta/ion/IonDrawable;->cancel()V

    .line 133
    sget-object p1, Lcom/koushikdutta/ion/ImageViewFutureImpl;->FUTURE_IMAGEVIEW_NULL_URI:Lcom/koushikdutta/ion/ImageViewFutureImpl;

    return-object p1

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->withImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    .line 138
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->crossfade:Z

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    instance-of v2, v0, Lcom/koushikdutta/ion/IonDrawable;

    if-eqz v2, :cond_1

    .line 141
    check-cast v0, Lcom/koushikdutta/ion/IonDrawable;

    .line 142
    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonDrawable;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    :cond_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    .line 147
    :cond_2
    iget v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->resizeWidth:I

    .line 148
    iget v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->resizeHeight:I

    .line 151
    iget v3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->resizeHeight:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->resizeWidth:I

    if-nez v3, :cond_3

    invoke-static {p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->getAdjustViewBounds(Landroid/widget/ImageView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 157
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->addDefaultTransform()V

    .line 165
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->executeCache(II)Lcom/koushikdutta/ion/BitmapFetcher;

    move-result-object v0

    .line 166
    iget-object v2, v0, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 167
    invoke-static {p1, v1, v2}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->doAnimation(Landroid/widget/ImageView;Landroid/view/animation/Animation;I)V

    .line 168
    sget-object v1, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_MEMORY:Lcom/koushikdutta/ion/ResponseServedFrom;

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->setIonDrawable(Landroid/widget/ImageView;Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/koushikdutta/ion/IonDrawable;->cancel()V

    .line 170
    iget-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-static {v2, v1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->getOrCreateImageViewFuture(Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;Lcom/koushikdutta/ion/IonDrawable;)Lcom/koushikdutta/ion/ImageViewFutureImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimation:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimationResource:I

    .line 171
    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setInAnimation(Landroid/view/animation/Animation;I)Lcom/koushikdutta/ion/ImageViewFutureImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    .line 172
    invoke-virtual {v1, v2}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setScaleMode(Lcom/koushikdutta/ion/ScaleMode;)Lcom/koushikdutta/ion/ImageViewFutureImpl;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    invoke-static {p1, v2}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->applyScaleMode(Landroid/widget/ImageView;Lcom/koushikdutta/ion/ScaleMode;)V

    .line 174
    invoke-virtual {v1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->reset()Lcom/koushikdutta/async/future/SimpleFuture;

    .line 175
    iget-object v0, v0, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    invoke-virtual {v1, v0, p1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-object v1

    .line 179
    :cond_4
    sget-object v1, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_NETWORK:Lcom/koushikdutta/ion/ResponseServedFrom;

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->setIonDrawable(Landroid/widget/ImageView;Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->loadAnimation:Landroid/view/animation/Animation;

    iget v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->loadAnimationResource:I

    invoke-static {p1, v1, v2}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->doAnimation(Landroid/widget/ImageView;Landroid/view/animation/Animation;I)V

    .line 181
    iget-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-static {p1, v0}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->getOrCreateImageViewFuture(Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;Lcom/koushikdutta/ion/IonDrawable;)Lcom/koushikdutta/ion/ImageViewFutureImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimationResource:I

    .line 182
    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setInAnimation(Landroid/view/animation/Animation;I)Lcom/koushikdutta/ion/ImageViewFutureImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    .line 183
    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->setScaleMode(Lcom/koushikdutta/ion/ScaleMode;)Lcom/koushikdutta/ion/ImageViewFutureImpl;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/koushikdutta/ion/ImageViewFutureImpl;->reset()Lcom/koushikdutta/async/future/SimpleFuture;

    return-object p1

    .line 128
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "imageView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->ensureBuilder()Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 79
    iget-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/koushikdutta/ion/future/ImageViewFuture;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->ensureBuilder()Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 72
    iget-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 238
    iput p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholderResource:I

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholder(I)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic postProcess(Lcom/koushikdutta/ion/bitmap/PostProcess;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess(Lcom/koushikdutta/ion/bitmap/PostProcess;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeCachedBitmap()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->removeCachedBitmap()V

    return-void
.end method

.method reset()V
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->reset()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->fadeIn:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->crossfade:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    .line 50
    iput-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    sget-object v2, Lcom/koushikdutta/ion/BitmapDrawableFactory;->DEFAULT:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    iput-object v2, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    .line 52
    iput v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->placeholderResource:I

    .line 53
    iput-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->errorResource:I

    .line 55
    iput-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimation:Landroid/view/animation/Animation;

    .line 56
    iput v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->inAnimationResource:I

    .line 57
    iput-object v1, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->loadAnimation:Landroid/view/animation/Animation;

    .line 58
    iput v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->loadAnimationResource:I

    return-void
.end method

.method public bridge synthetic resize(II)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resize(II)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resizeHeight(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resizeWidth(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic smartSize(Z)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->smartSize(Z)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method withImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->imageViewPostRef:Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;

    :cond_1
    return-object p0
.end method
