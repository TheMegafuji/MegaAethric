.class public final Lcom/google/android/gms/maps/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# static fields
.field private static zza:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    const-string v0, "cameraPosition must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    .line 2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    const-string v0, "latLng must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    .line 2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    const-string v0, "bounds must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    .line 2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    const-string v0, "bounds must not be null"

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    .line 5
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngBoundsWithSize(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    const-string v0, "latLng must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    .line 2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static scrollBy(FF)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->scrollBy(FF)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static zoomBy(F)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomBy(F)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 3

    const-string v0, "focus must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    .line 4
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, p0, v2, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomByWithFocus(FII)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static zoomIn()Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomIn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static zoomOut()Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomOut()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomTo(F)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    sput-object p0, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    return-void
.end method

.method private static zzb()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    return-object v0
.end method
