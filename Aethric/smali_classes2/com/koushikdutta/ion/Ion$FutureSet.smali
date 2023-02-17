.class Lcom/koushikdutta/ion/Ion$FutureSet;
.super Ljava/util/WeakHashMap;
.source "Ion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "Lcom/koushikdutta/async/future/Future;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method
