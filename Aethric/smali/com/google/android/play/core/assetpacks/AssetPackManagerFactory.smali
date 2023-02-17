.class public final Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;
    .locals 1

    const-class v0, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/zzd;->zza(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/zza;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/assetpacks/zza;->zza()Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
