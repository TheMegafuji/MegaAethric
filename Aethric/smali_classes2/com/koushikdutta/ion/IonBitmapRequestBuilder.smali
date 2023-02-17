.class abstract Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
.super Ljava/lang/Object;
.source "IonBitmapRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/builder/BitmapFutureBuilder;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$BF;


# static fields
.field private static final FUTURE_BITMAP_NULL_URI:Lcom/koushikdutta/async/future/SimpleFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field builder:Lcom/koushikdutta/ion/IonRequestBuilder;

.field deepZoom:Z

.field ion:Lcom/koushikdutta/ion/Ion;

.field postProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ">;"
        }
    .end annotation
.end field

.field resizeHeight:I

.field resizeWidth:I

.field scaleMode:Lcom/koushikdutta/ion/ScaleMode;

.field transforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$1;

    invoke-direct {v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->FUTURE_BITMAP_NULL_URI:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 63
    iput-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 58
    iput-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 59
    iget-object p1, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iput-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    return-void
.end method

.method private checkNoTransforms(Ljava/lang/String;)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->hasTransforms()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t apply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after transform has been called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is applied to the original resized bitmap."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeBitmapKey(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/Transform;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/koushikdutta/ion/bitmap/Transform;->key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    .line 143
    invoke-static {p1}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private computeDecodeKey()Ljava/lang/String;
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    iget v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    iget-object v3, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    sget-object v4, Lcom/koushikdutta/ion/builder/AnimateGifMode;->NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeDecodeKey(Lcom/koushikdutta/ion/IonRequestBuilder;IIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeDecodeKey(Lcom/koushikdutta/ion/IonRequestBuilder;IIZZ)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "resize="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_0

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":noAnimate"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p4, :cond_1

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":deepZoom"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 118
    invoke-static {p1}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static doAnimation(Landroid/widget/ImageView;Landroid/view/animation/Animation;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 76
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public addDefaultTransform()V
    .locals 6

    .line 122
    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    if-nez v0, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must call resize when using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/koushikdutta/ion/DefaultTransform;

    iget v3, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    iget v4, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    iget-object v5, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    invoke-direct {v2, v3, v4, v5}, Lcom/koushikdutta/ion/DefaultTransform;-><init>(IILcom/koushikdutta/ion/ScaleMode;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public animateGif(Lcom/koushikdutta/ion/builder/AnimateGifMode;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object p0
.end method

.method public bridge synthetic animateGif(Lcom/koushikdutta/ion/builder/AnimateGifMode;)Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGif(Lcom/koushikdutta/ion/builder/AnimateGifMode;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public asBitmap()Lcom/koushikdutta/async/future/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->FUTURE_BITMAP_NULL_URI:Lcom/koushikdutta/async/future/SimpleFuture;

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->addDefaultTransform()V

    .line 229
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->executeCache()Lcom/koushikdutta/ion/BitmapFetcher;

    move-result-object v0

    .line 230
    iget-object v1, v0, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v1, :cond_1

    .line 231
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 232
    iget-object v2, v0, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v2, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    iget-object v0, v0, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-object v1

    .line 236
    :cond_1
    new-instance v1, Lcom/koushikdutta/ion/BitmapInfoToBitmap;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/IonContext;

    invoke-direct {v1, v2}, Lcom/koushikdutta/ion/BitmapInfoToBitmap;-><init>(Lcom/koushikdutta/ion/IonContext;)V

    .line 237
    sget-object v2, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;-><init>(Lcom/koushikdutta/ion/IonBitmapRequestBuilder;Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/BitmapInfoToBitmap;)V

    invoke-static {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeDecodeKey()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->addDefaultTransform()V

    .line 184
    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    const-string v0, "centerCrop"

    .line 257
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->checkNoTransforms(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/koushikdutta/ion/ScaleMode;->CenterCrop:Lcom/koushikdutta/ion/ScaleMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->centerCrop()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    const-string v0, "centerInside"

    .line 278
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->checkNoTransforms(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/koushikdutta/ion/ScaleMode;->CenterInside:Lcom/koushikdutta/ion/ScaleMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    return-object p0
.end method

.method public bridge synthetic centerInside()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->centerInside()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deepZoom()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 2

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    .line 337
    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    if-gtz v0, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->hasTransforms()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    .line 342
    iput v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    return-object p0

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t deepZoom with transforms."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t deepZoom with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deepZoom()Lcom/koushikdutta/ion/builder/ImageViewBuilder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBuilder()Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object v0
.end method

.method executeCache()Lcom/koushikdutta/ion/BitmapFetcher;
    .locals 2

    .line 189
    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    iget v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->executeCache(II)Lcom/koushikdutta/ion/BitmapFetcher;

    move-result-object v0

    return-object v0
.end method

.method executeCache(II)Lcom/koushikdutta/ion/BitmapFetcher;
    .locals 3

    .line 193
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeDecodeKey()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v2, Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-direct {v2}, Lcom/koushikdutta/ion/BitmapFetcher;-><init>()V

    .line 198
    iput-object v1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    .line 199
    iput-object v0, v2, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->hasTransforms()Z

    move-result v0

    iput-boolean v0, v2, Lcom/koushikdutta/ion/BitmapFetcher;->hasTransforms:Z

    .line 201
    iput p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->sampleWidth:I

    .line 202
    iput p2, v2, Lcom/koushikdutta/ion/BitmapFetcher;->sampleHeight:I

    .line 203
    iget-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 204
    iget-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    iput-object p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->transforms:Ljava/util/ArrayList;

    .line 205
    iget-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    sget-object p2, Lcom/koushikdutta/ion/builder/AnimateGifMode;->NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->animateGif:Z

    .line 206
    iget-boolean p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    iput-boolean p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->deepZoom:Z

    .line 207
    iget-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess:Ljava/util/ArrayList;

    iput-object p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->postProcess:Ljava/util/ArrayList;

    .line 210
    iget-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-boolean p1, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache:Z

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object p1, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object p1, p1, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    iput-object p1, v2, Lcom/koushikdutta/ion/BitmapFetcher;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    :cond_1
    return-object v2
.end method

.method public fitCenter()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    const-string v0, "fitCenter"

    .line 271
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->checkNoTransforms(Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/koushikdutta/ion/ScaleMode;->FitCenter:Lcom/koushikdutta/ion/ScaleMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->fitCenter()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitXY()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    const-string v0, "fitXY"

    .line 264
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->checkNoTransforms(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/koushikdutta/ion/ScaleMode;->FitXY:Lcom/koushikdutta/ion/ScaleMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    return-object p0
.end method

.method public bridge synthetic fitXY()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->fitXY()Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method hasTransforms()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-boolean v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeDecodeKey()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->addDefaultTransform()V

    .line 155
    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, v2, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    if-nez v2, :cond_1

    .line 159
    sget-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, v2, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->getFileCache()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->hasTransforms()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/util/FileCache;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    sget-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0

    .line 163
    :cond_2
    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/util/FileCache;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->MAYBE_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0

    .line 165
    :cond_3
    sget-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->NOT_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0

    .line 152
    :cond_4
    :goto_0
    sget-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->NOT_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0
.end method

.method public postProcess(Lcom/koushikdutta/ion/bitmap/PostProcess;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess:Ljava/util/ArrayList;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/koushikdutta/ion/TransformBitmap$PostProcessNullTransform;

    invoke-interface {p1}, Lcom/koushikdutta/ion/bitmap/PostProcess;->key()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/TransformBitmap$PostProcessNullTransform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic postProcess(Lcom/koushikdutta/ion/bitmap/PostProcess;)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess(Lcom/koushikdutta/ion/bitmap/PostProcess;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeCachedBitmap()V
    .locals 3

    .line 171
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeDecodeKey()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->addDefaultTransform()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, v2, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->getFileCache()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, v2, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->getFileCache()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, v2, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->remove(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    .line 177
    iget-object v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->remove(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    return-void
.end method

.method reset()V
    .locals 3

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 47
    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    .line 50
    iput v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    .line 51
    sget-object v2, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    iput-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->animateGifMode:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 52
    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 53
    iput-boolean v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    .line 54
    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->postProcess:Ljava/util/ArrayList;

    return-void
.end method

.method public resize(II)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->hasTransforms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    if-nez v0, :cond_0

    .line 292
    iput p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    .line 293
    iput p2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    return-object p0

    .line 291
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not resize with deepZoom."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t apply resize after transform has been called.resize is applied to the original bitmap."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic resize(II)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resize(II)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public resizeHeight(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resize(II)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resizeHeight(I)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public resizeWidth(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resize(II)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resizeWidth(I)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth(I)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public smartSize(Z)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    .line 309
    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    if-gtz v0, :cond_2

    .line 312
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->deepZoom:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 316
    iput p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    .line 317
    iput p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 320
    iput p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeWidth:I

    .line 321
    iput p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->resizeHeight:I

    :goto_0
    return-object p0

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not smartSize with deepZoom."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set smart size after resize has been called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic smartSize(Z)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->smartSize(Z)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transforms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method
