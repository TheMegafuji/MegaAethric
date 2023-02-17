.class final Lcom/google/android/play/core/splitinstall/zzas;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzc:Lcom/google/android/play/core/splitinstall/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;ILcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzc:Lcom/google/android/play/core/splitinstall/zzbc;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/zzas;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzc:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/zzca;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzc:Lcom/google/android/play/core/splitinstall/zzbc;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/zzbc;->zzk(Lcom/google/android/play/core/splitinstall/zzbc;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/splitinstall/zzas;->zza:I

    .line 2
    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zza()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/zzat;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzc:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/zzat;-><init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;)V

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/zzca;->zzc(Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/play/core/internal/zzcc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/play/core/splitinstall/zzas;->zza:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "cancelInstall(%d)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzas;->zzb:Lcom/google/android/play/core/tasks/zzi;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void
.end method
