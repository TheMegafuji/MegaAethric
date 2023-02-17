.class public final Lcom/google/android/gms/internal/drive/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/drive/zzai;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzai;-><init>(Lcom/google/android/gms/internal/drive/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzaf()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbs;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Client is not yet connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzae()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbs;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Client is not yet connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final newCreateFileActivityBuilder()Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    .line 21
    new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;-><init>()V

    return-object v0
.end method

.method public final newDriveContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzah;

    const/high16 v1, 0x20000000

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzah;-><init>(Lcom/google/android/gms/internal/drive/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final newOpenFileActivityBuilder()Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;-><init>()V

    return-object v0
.end method

.method public final query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/drive/zzag;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzag;-><init>(Lcom/google/android/gms/internal/drive/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Query must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
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

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/drive/zzaj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzaj;-><init>(Lcom/google/android/gms/internal/drive/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method
