.class final Lcom/koushikdutta/async/future/SimpleCancellable$1;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleCancellable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/SimpleCancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable$1;->setComplete()Z

    return-void
.end method
