.class final Lcom/google/android/play/core/assetpacks/zzab;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzc:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzab;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzab;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzab;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzab;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzaw;->zzs(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/zzu;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzab;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/zzaw;->zzu(Lcom/google/android/play/core/assetpacks/zzaw;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzab;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0, v3}, Lcom/google/android/play/core/assetpacks/zzaw;->zzl(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzm()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/google/android/play/core/assetpacks/zzat;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzab;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzab;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v5, v6, v7}, Lcom/google/android/play/core/assetpacks/zzat;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 4
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/internal/zzu;->zzj(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzr()Lcom/google/android/play/core/internal/zzag;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzab;->zza:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v0, "removePack(%s)"

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/play/core/internal/zzag;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
