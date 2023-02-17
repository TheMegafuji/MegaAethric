.class final Lcom/google/android/play/core/appupdate/zzp;
.super Lcom/google/android/play/core/appupdate/zzn;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zzd:Lcom/google/android/play/core/appupdate/zzq;

.field private final zze:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzp;->zzd:Lcom/google/android/play/core/appupdate/zzq;

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/zzn;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/internal/zzag;Lcom/google/android/play/core/tasks/zzi;)V

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzp;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/appupdate/zzn;->zzc(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/zzq;->zza(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzp;->zzb:Lcom/google/android/play/core/tasks/zzi;

    new-instance v1, Lcom/google/android/play/core/install/InstallException;

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/zzq;->zza(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzp;->zzb:Lcom/google/android/play/core/tasks/zzi;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzp;->zzd:Lcom/google/android/play/core/appupdate/zzq;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzp;->zze:Ljava/lang/String;

    .line 4
    invoke-static {v1, p1, v2}, Lcom/google/android/play/core/appupdate/zzq;->zzd(Lcom/google/android/play/core/appupdate/zzq;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
