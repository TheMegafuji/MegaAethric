.class public Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;
.super Landroid/app/Service;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzch;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzch;-><init>(Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->zza:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->zza:Landroid/os/IBinder;

    return-object p1
.end method

.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->stopForeground(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
