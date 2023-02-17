.class public final Lcom/google/android/play/core/internal/zzn;
.super Lcom/google/android/play/core/internal/zzk;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzp;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/internal/zzk;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzk;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/zzm;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/zzm;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/zzk;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzk;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/zzm;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/zzm;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/zzk;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
