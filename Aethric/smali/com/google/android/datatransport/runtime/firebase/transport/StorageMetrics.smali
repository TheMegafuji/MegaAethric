.class public final Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;
.super Ljava/lang/Object;
.source "StorageMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;


# instance fields
.field private final current_cache_size_bytes_:J

.field private final max_cache_size_bytes_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->current_cache_size_bytes_:J

    .line 14
    iput-wide p3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->max_cache_size_bytes_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCurrentCacheSizeBytes()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->current_cache_size_bytes_:J

    return-wide v0
.end method

.method public getMaxCacheSizeBytes()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->max_cache_size_bytes_:J

    return-wide v0
.end method
