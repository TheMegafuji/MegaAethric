.class final Lcom/google/android/gms/games/internal/zzag;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzp(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    :try_start_2
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, p1

    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    .line 8
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p1

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4
    :catch_0
    :goto_1
    throw v1
.end method
