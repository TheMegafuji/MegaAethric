.class final Lcom/google/android/play/core/assetpacks/zzbu;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzco;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/zzco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbu;->zza:Lcom/google/android/play/core/internal/zzco;

    return-void
.end method


# virtual methods
.method final zza(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbu;->zza:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/zzy;->zza(ILjava/lang/String;Ljava/lang/String;I)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->await(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v6, v5, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s"

    .line 5
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 6
    new-instance p3, Lcom/google/android/play/core/assetpacks/zzck;

    const-string p4, "Extractor was interrupted while waiting for chunk file."

    .line 7
    invoke-direct {p3, p4, p2, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p3

    :catch_1
    move-exception v0

    new-instance v6, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v5, v5, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    const-string p2, "Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s"

    .line 9
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v6
.end method
