.class public Lcom/koushikdutta/ion/DeferredLoadBitmap;
.super Lcom/koushikdutta/ion/BitmapCallback;
.source "DeferredLoadBitmap.java"


# static fields
.field public static DEFER_COUNTER:I


# instance fields
.field fetcher:Lcom/koushikdutta/ion/BitmapFetcher;

.field priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Lcom/koushikdutta/ion/BitmapFetcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/ion/BitmapCallback;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V

    .line 10
    sget p1, Lcom/koushikdutta/ion/DeferredLoadBitmap;->DEFER_COUNTER:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/koushikdutta/ion/DeferredLoadBitmap;->DEFER_COUNTER:I

    iput p1, p0, Lcom/koushikdutta/ion/DeferredLoadBitmap;->priority:I

    .line 13
    iput-object p3, p0, Lcom/koushikdutta/ion/DeferredLoadBitmap;->fetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    return-void
.end method
