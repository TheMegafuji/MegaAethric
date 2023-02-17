.class public abstract Lcom/google/android/gms/maps/internal/zzj;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "com.google.android.gms:play-services-maps@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

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

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzj;->deactivate()V

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string p2, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    .line 3
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 4
    instance-of v0, p2, Lcom/google/android/gms/maps/internal/zzaj;

    if-eqz v0, :cond_3

    .line 5
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/internal/zzaj;

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/google/android/gms/maps/internal/zzai;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/internal/zzai;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/zzj;->activate(Lcom/google/android/gms/maps/internal/zzaj;)V

    .line 7
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
