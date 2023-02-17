.class final Lcom/google/android/play/core/assetpacks/zzak;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzb:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzak;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzak;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzak;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/zzaw;->zzt(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/zzu;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzak;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzaw;->zzu(Lcom/google/android/play/core/assetpacks/zzaw;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzm()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzap;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzak;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzak;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzap;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/zzu;->zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzr()Lcom/google/android/play/core/internal/zzag;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "keepAlive"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
