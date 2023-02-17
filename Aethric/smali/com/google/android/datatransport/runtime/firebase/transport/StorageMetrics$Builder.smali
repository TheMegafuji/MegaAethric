.class public final Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;
.super Ljava/lang/Object;
.source "StorageMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private current_cache_size_bytes_:J

.field private max_cache_size_bytes_:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->current_cache_size_bytes_:J

    .line 46
    iput-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->max_cache_size_bytes_:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;
    .locals 5

    .line 50
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->current_cache_size_bytes_:J

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->max_cache_size_bytes_:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;-><init>(JJ)V

    return-object v0
.end method

.method public setCurrentCacheSizeBytes(J)Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->current_cache_size_bytes_:J

    return-object p0
.end method

.method public setMaxCacheSizeBytes(J)Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->max_cache_size_bytes_:J

    return-object p0
.end method
