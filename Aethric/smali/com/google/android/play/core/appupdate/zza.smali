.class public final Lcom/google/android/play/core/appupdate/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static zza:Lcom/google/android/play/core/appupdate/zzaa;


# direct methods
.method static declared-synchronized zza(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/zzaa;
    .locals 3

    const-class v0, Lcom/google/android/play/core/appupdate/zza;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/appupdate/zza;->zza:Lcom/google/android/play/core/appupdate/zzaa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/appupdate/zzy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Lcom/google/android/play/core/appupdate/zzx;)V

    new-instance v2, Lcom/google/android/play/core/appupdate/zzh;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/appupdate/zzh;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/appupdate/zzy;->zza(Lcom/google/android/play/core/appupdate/zzh;)Lcom/google/android/play/core/appupdate/zzy;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->zzb()Lcom/google/android/play/core/appupdate/zzaa;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/appupdate/zza;->zza:Lcom/google/android/play/core/appupdate/zzaa;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/appupdate/zza;->zza:Lcom/google/android/play/core/appupdate/zzaa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
