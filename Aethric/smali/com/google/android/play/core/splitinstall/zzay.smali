.class final Lcom/google/android/play/core/splitinstall/zzay;
.super Lcom/google/android/play/core/splitinstall/zzbb;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/zzbb;-><init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zzg(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/zzbb;->zzg(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/zzay;->zza:Lcom/google/android/play/core/tasks/zzi;

    .line 2
    invoke-static {p2}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzd(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
