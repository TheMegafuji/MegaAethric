.class Lcom/koushikdutta/ion/DefaultTransform;
.super Ljava/lang/Object;
.source "DefaultTransform.java"

# interfaces
.implements Lcom/koushikdutta/ion/bitmap/Transform;


# static fields
.field static final bilinearSamplingPaint:Landroid/graphics/Paint;


# instance fields
.field final resizeHeight:I

.field final resizeWidth:I

.field final scaleMode:Lcom/koushikdutta/ion/ScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/koushikdutta/ion/DefaultTransform;->bilinearSamplingPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(IILcom/koushikdutta/ion/ScaleMode;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/koushikdutta/ion/DefaultTransform;->resizeWidth:I

    .line 17
    iput p2, p0, Lcom/koushikdutta/ion/DefaultTransform;->resizeHeight:I

    if-nez p3, :cond_0

    .line 21
    sget-object p1, Lcom/koushikdutta/ion/ScaleMode;->FitXY:Lcom/koushikdutta/ion/ScaleMode;

    iput-object p1, p0, Lcom/koushikdutta/ion/DefaultTransform;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    goto :goto_0

    .line 23
    :cond_0
    iput-object p3, p0, Lcom/koushikdutta/ion/DefaultTransform;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    :goto_0
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/ion/DefaultTransform;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/ScaleMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/koushikdutta/ion/DefaultTransform;->resizeWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/koushikdutta/ion/DefaultTransform;->resizeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33
    :cond_0
    iget v1, p0, Lcom/koushikdutta/ion/DefaultTransform;->resizeWidth:I

    .line 34
    iget v2, p0, Lcom/koushikdutta/ion/DefaultTransform;->resizeHeight:I

    if-gtz v1, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    if-gtz v2, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 44
    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 45
    iget-object v7, p0, Lcom/koushikdutta/ion/DefaultTransform;->scaleMode:Lcom/koushikdutta/ion/ScaleMode;

    .line 47
    sget-object v8, Lcom/koushikdutta/ion/ScaleMode;->CenterInside:Lcom/koushikdutta/ion/ScaleMode;

    if-ne v7, v8, :cond_4

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v1, v8, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v2, v8, :cond_4

    .line 51
    :cond_3
    sget-object v7, Lcom/koushikdutta/ion/ScaleMode;->FitCenter:Lcom/koushikdutta/ion/ScaleMode;

    .line 54
    :cond_4
    sget-object v8, Lcom/koushikdutta/ion/ScaleMode;->CenterInside:Lcom/koushikdutta/ion/ScaleMode;

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_5

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 59
    :cond_5
    sget-object v8, Lcom/koushikdutta/ion/ScaleMode;->FitXY:Lcom/koushikdutta/ion/ScaleMode;

    if-eq v7, v8, :cond_8

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v4, v8

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v5, v10

    .line 63
    sget-object v11, Lcom/koushikdutta/ion/ScaleMode;->CenterCrop:Lcom/koushikdutta/ion/ScaleMode;

    if-ne v7, v11, :cond_6

    .line 64
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_1

    .line 66
    :cond_6
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_1
    cmpl-float v8, v7, v6

    if-nez v8, :cond_7

    return-object p1

    .line 70
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    sub-float v7, v4, v8

    div-float/2addr v7, v9

    sub-float v8, v5, v10

    div-float/2addr v8, v9

    sub-float/2addr v4, v7

    sub-float/2addr v5, v8

    .line 74
    invoke-virtual {v3, v7, v8, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    :cond_8
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_9

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_9

    return-object p1

    .line 82
    :cond_9
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 85
    sget-object v4, Lcom/koushikdutta/ion/DefaultTransform;->bilinearSamplingPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v0
.end method
