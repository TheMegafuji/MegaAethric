.class final Lcom/google/android/play/core/splitinstall/zzar;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzb:Lcom/google/android/play/core/splitinstall/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzar;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/zzar;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzar;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/zzca;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzar;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/zzbc;->zzk(Lcom/google/android/play/core/splitinstall/zzbc;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitinstall/zzaz;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/zzar;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v3, v1, v4}, Lcom/google/android/play/core/splitinstall/zzaz;-><init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;)V

    .line 2
    invoke-interface {v0, v2, v3}, Lcom/google/android/play/core/internal/zzca;->zzi(Ljava/lang/String;Lcom/google/android/play/core/internal/zzcc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getSessionStates"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzar;->zza:Lcom/google/android/play/core/tasks/zzi;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 4
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void
.end method
