.class Lcom/google/android/play/core/splitinstall/zzbb;
.super Lcom/google/android/play/core/internal/zzcb;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final zza:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzb:Lcom/google/android/play/core/splitinstall/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzcb;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public zzb(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzc(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredInstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzd(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredLanguageInstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zze(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredLanguageUninstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzf(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredUninstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzg(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzi(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzj(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzk(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteInstallForAppUpdate"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzl(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    .line 4
    invoke-direct {v1, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zzm(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zzb:Lcom/google/android/play/core/splitinstall/zzbc;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/zzbc;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbb;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/zzbc;->zzb()Lcom/google/android/play/core/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSplitsForAppUpdate"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
