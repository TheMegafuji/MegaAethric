.class public final Lcom/google/android/gms/maps/model/GroundOverlay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/maps/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzo;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/maps/model/GroundOverlay;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 2
    check-cast p1, Lcom/google/android/gms/maps/model/GroundOverlay;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzz(Lcom/google/android/gms/internal/maps/zzo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getBearing()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzd()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzl()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0
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

.method public getHeight()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zze()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzm()Ljava/lang/String;

    move-result-object v0
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

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzk()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0
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

.method public getTag()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
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

.method public getTransparency()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzf()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzg()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzh()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzi()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isClickable()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzA()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isVisible()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzB()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzo;->zzn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setBearing(F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzo(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setDimensions(F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzq(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setDimensions(FF)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/maps/zzo;->zzr(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public setImage(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1

    const-string v0, "imageDescriptor must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzt(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzu(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setTransparency(F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzw(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzx(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setZIndex(F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zza:Lcom/google/android/gms/internal/maps/zzo;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzo;->zzy(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
