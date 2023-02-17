.class public final Lcom/google/android/gms/maps/model/IndoorLevel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/maps/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzu;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzu;->zzg()V
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
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    .line 2
    check-cast p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzu;->zzh(Lcom/google/android/gms/internal/maps/zzu;)Z

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

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzu;->zze()Ljava/lang/String;

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

.method public getShortName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzu;->zzf()Ljava/lang/String;

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

.method public hashCode()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzu;->zzd()I

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
