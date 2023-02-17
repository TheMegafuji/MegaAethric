.class Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "FadeTabIndicatorInterpolator.java"


# static fields
.field private static final FADE_THRESHOLD:F = 0.5f


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p4, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 44
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    if-gez v1, :cond_1

    .line 46
    invoke-static {p2, p3, p3, v0, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p2

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p3, p2, v0, p2, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p2

    .line 49
    :goto_1
    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    .line 51
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    .line 53
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-virtual {p5, p3, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 55
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
