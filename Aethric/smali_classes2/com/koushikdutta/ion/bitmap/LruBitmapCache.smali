.class Lcom/koushikdutta/ion/bitmap/LruBitmapCache;
.super Lcom/koushikdutta/async/util/LruCache;
.source "LruBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/util/LruCache;-><init>(J)V

    .line 6
    new-instance p1, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-direct {p1}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    check-cast p4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->entryRemoved(ZLjava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {p1, p2, p3}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public evictAllBitmapInfo()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->evictAll()V

    .line 43
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->clear()V

    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public putSoft(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeBitmapInfo(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->soft:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    .line 35
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->sizeOf(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)J
    .locals 0

    .line 18
    invoke-virtual {p2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->sizeOf()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
