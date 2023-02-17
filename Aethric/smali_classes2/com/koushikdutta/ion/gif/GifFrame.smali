.class public Lcom/koushikdutta/ion/gif/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/koushikdutta/ion/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 8
    iput p2, p0, Lcom/koushikdutta/ion/gif/GifFrame;->delay:I

    return-void
.end method
