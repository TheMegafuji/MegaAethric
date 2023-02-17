.class public final Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;
.super Ljava/lang/Object;
.source "GlobalMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;


# instance fields
.field private final storage_metrics_:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->storage_metrics_:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;
    .locals 1

    .line 16
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getStorageMetrics()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Ignore;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->storage_metrics_:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->getDefaultInstance()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStorageMetricsInternal()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "storageMetrics"
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->storage_metrics_:Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    return-object v0
.end method
