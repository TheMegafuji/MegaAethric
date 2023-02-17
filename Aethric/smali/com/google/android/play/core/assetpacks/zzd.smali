.class public final Lcom/google/android/play/core/assetpacks/zzd;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static zza:Lcom/google/android/play/core/assetpacks/zza;


# direct methods
.method static declared-synchronized zza(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/zza;
    .locals 3

    const-class v0, Lcom/google/android/play/core/assetpacks/zzd;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/assetpacks/zzd;->zza:Lcom/google/android/play/core/assetpacks/zza;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzcb;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/assetpacks/zzcb;-><init>(Lcom/google/android/play/core/assetpacks/zzca;)V

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzp;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/zzp;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/zzcb;->zzb(Lcom/google/android/play/core/assetpacks/zzp;)Lcom/google/android/play/core/assetpacks/zzcb;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/zzcb;->zza()Lcom/google/android/play/core/assetpacks/zza;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/assetpacks/zzd;->zza:Lcom/google/android/play/core/assetpacks/zza;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzd;->zza:Lcom/google/android/play/core/assetpacks/zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
