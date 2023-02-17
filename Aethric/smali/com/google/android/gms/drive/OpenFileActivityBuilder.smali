.class public Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private zzba:Ljava/lang/String;

.field private zzbb:[Ljava/lang/String;

.field private zzbc:Lcom/google/android/gms/drive/query/Filter;

.field private zzbd:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 5

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzg()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    .line 27
    :goto_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/drive/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbd:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/drive/zzgm;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgm;)Landroid/content/IntentSender;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to connect Drive Play Service"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final getTitle()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbd:Lcom/google/android/gms/drive/DriveId;

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzba:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType([Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "mimeTypes may not be null"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:[Ljava/lang/String;

    return-object p0
.end method

.method public setSelectionFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "filter may not be null"

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/drive/query/internal/zzk;->zza(Lcom/google/android/gms/drive/query/Filter;)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string v1, "FullTextSearchFilter cannot be used as a selection filter"

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-object p0
.end method

.method final zzg()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:[Ljava/lang/String;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    if-nez v0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use a selection filter and set mimetypes simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()[Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbb:[Ljava/lang/String;

    return-object v0
.end method

.method final zzt()Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-object v0
.end method

.method final zzu()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzbd:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method
