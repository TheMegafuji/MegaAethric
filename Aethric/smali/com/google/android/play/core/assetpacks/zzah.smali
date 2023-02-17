.class final Lcom/google/android/play/core/assetpacks/zzah;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzd:I

.field final synthetic zze:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILjava/lang/String;Lcom/google/android/play/core/tasks/zzi;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzah;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzd:I

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/zzaw;->zzs(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/zzu;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzaw;->zzu(Lcom/google/android/play/core/assetpacks/zzaw;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzah;->zza:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzb:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/zzaw;->zzl(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzm()Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/zzar;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iget v7, p0, Lcom/google/android/play/core/assetpacks/zzah;->zza:I

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzb:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzd:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/zzar;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILjava/lang/String;I)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v10}, Lcom/google/android/play/core/internal/zzu;->zzh(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzr()Lcom/google/android/play/core/internal/zzag;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyModuleCompleted"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
