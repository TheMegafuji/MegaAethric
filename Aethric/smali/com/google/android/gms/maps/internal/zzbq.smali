.class public abstract Lcom/google/android/gms/maps/internal/zzbq;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "com.google.android.gms:play-services-maps@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzbr;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback"

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

    if-ne p1, p4, :cond_2

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    .line 2
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 3
    instance-of v0, p2, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    if-eqz v0, :cond_1

    .line 4
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/maps/internal/zzbv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/internal/zzbv;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/zzbq;->zzb(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
