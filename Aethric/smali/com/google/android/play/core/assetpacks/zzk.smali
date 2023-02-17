.class final Lcom/google/android/play/core/assetpacks/zzk;
.super Landroid/os/ResultReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzb:Lcom/google/android/play/core/assetpacks/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzl;Landroid/os/Handler;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->zzb:Lcom/google/android/play/core/assetpacks/zzl;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzk;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->zza:Lcom/google/android/play/core/tasks/zzi;

    new-instance p2, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/16 v0, -0x64

    invoke-direct {p2, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, -0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzk;->zzb:Lcom/google/android/play/core/assetpacks/zzl;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/zzl;->zzb(Lcom/google/android/play/core/assetpacks/zzl;)Lcom/google/android/play/core/assetpacks/zzbx;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/play/core/assetpacks/zzbx;->zzb(Landroid/app/PendingIntent;)V

    return-void
.end method
