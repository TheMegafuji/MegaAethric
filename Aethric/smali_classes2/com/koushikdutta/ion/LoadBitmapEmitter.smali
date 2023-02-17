.class Lcom/koushikdutta/ion/LoadBitmapEmitter;
.super Lcom/koushikdutta/ion/LoadBitmapBase;
.source "LoadBitmapEmitter.java"


# instance fields
.field final animateGif:Z


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/ion/LoadBitmapBase;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V

    .line 8
    iput-boolean p4, p0, Lcom/koushikdutta/ion/LoadBitmapEmitter;->animateGif:Z

    return-void
.end method
