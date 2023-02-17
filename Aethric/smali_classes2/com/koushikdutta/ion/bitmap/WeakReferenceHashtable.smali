.class public Lcom/koushikdutta/ion/bitmap/WeakReferenceHashtable;
.super Lcom/koushikdutta/ion/bitmap/ReferenceHashtable;
.source "WeakReferenceHashtable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/ion/bitmap/ReferenceHashtable<",
        "TK;TV;",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/koushikdutta/ion/bitmap/ReferenceHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/bitmap/WeakReferenceHashtable;->create(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    return-object p1
.end method

.method protected create(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
