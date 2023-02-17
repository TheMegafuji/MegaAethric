.class public abstract Lcom/google/android/gms/maps/internal/zzh;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "com.google.android.gms:play-services-maps@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzi;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzw;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzx;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/zzh;->zzb(Lcom/google/android/gms/internal/maps/zzx;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/maps/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzw;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzx;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/zzh;->zzc(Lcom/google/android/gms/internal/maps/zzx;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/maps/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p4
.end method
