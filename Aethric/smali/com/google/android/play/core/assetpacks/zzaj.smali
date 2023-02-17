.class final Lcom/google/android/play/core/assetpacks/zzaj;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:I

.field final synthetic zze:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzf:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzc:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzd:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zze:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/zzaw;->zzs(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/zzu;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzaw;->zzu(Lcom/google/android/play/core/assetpacks/zzaw;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zza:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzc:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzd:I

    .line 2
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzaw;->zzk(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzm()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/zzan;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zze:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzan;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/zzu;->zzd(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzr()Lcom/google/android/play/core/internal/zzag;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzb:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzc:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zzd:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zza:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzaj;->zze:Lcom/google/android/play/core/tasks/zzi;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void
.end method
