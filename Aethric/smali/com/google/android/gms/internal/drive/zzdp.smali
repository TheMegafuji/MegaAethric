.class public Lcom/google/android/gms/internal/drive/zzdp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# instance fields
.field protected final zzk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzaw;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/drive/zzaw;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public addChangeSubscription(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzaw;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 23
    new-instance v2, Lcom/google/android/gms/internal/drive/zzj;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/drive/zzj;-><init>(ILcom/google/android/gms/drive/DriveId;)V

    .line 25
    iget v1, v2, Lcom/google/android/gms/internal/drive/zzj;->zzda:I

    .line 27
    iget-object v3, v2, Lcom/google/android/gms/internal/drive/zzj;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 28
    invoke-static {v1, v3}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v1

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzaw;->isConnected()Z

    move-result v1

    const-string v3, "Client must be connected"

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 31
    iget-boolean v1, v0, Lcom/google/android/gms/internal/drive/zzaw;->zzec:Z

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/drive/zzaz;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/drive/zzaz;-><init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzj;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Application must define an exported DriveEventService subclass in AndroidManifest.xml to add event subscriptions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdu;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzdq;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdr;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzaw;

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/drive/zzaw;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public removeChangeSubscription(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzaw;

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x1

    .line 38
    invoke-static {v2, v1}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzaw;->isConnected()Z

    move-result v3

    const-string v4, "Client must be connected"

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 40
    new-instance v3, Lcom/google/android/gms/internal/drive/zzba;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzba;-><init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public setParents(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Set;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/drive/zzds;

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzds;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ParentIds must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trash(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdv;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public untrash(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdw;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdt;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzdt;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ChangeSet must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
