.class public final Lcom/google/android/play/core/splitinstall/zzu;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static zza:Lcom/google/android/play/core/splitinstall/zzp;


# direct methods
.method public static declared-synchronized zza(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/zzp;
    .locals 3

    const-class v0, Lcom/google/android/play/core/splitinstall/zzu;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/zzu;->zza:Lcom/google/android/play/core/splitinstall/zzp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/zzc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/splitinstall/zzc;-><init>(Lcom/google/android/play/core/splitinstall/zzb;)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/zzac;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/splitinstall/zzac;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitinstall/zzc;->zza(Lcom/google/android/play/core/splitinstall/zzac;)Lcom/google/android/play/core/splitinstall/zzc;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/zzc;->zzb()Lcom/google/android/play/core/splitinstall/zzp;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/splitinstall/zzu;->zza:Lcom/google/android/play/core/splitinstall/zzp;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/zzu;->zza:Lcom/google/android/play/core/splitinstall/zzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
