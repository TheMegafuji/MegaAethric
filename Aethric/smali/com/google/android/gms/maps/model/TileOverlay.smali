.class public final Lcom/google/android/gms/maps/model/TileOverlay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/maps/zzag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzag;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzh()V
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/maps/model/TileOverlay;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 2
    check-cast p1, Lcom/google/android/gms/maps/model/TileOverlay;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzag;->zzn(Lcom/google/android/gms/internal/maps/zzag;)Z

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

.method public getFadeIn()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzo()Z

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzg()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzd()F

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zze()F

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzf()I

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzp()Z

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzag;->zzi()V
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

.method public setFadeIn(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzag;->zzj(Z)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzag;->zzk(F)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzag;->zzl(Z)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zza:Lcom/google/android/gms/internal/maps/zzag;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzag;->zzm(F)V
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
