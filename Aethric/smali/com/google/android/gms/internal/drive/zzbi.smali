.class public final Lcom/google/android/gms/internal/drive/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveContents;


# static fields
.field private static final zzbz:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private closed:Z

.field private final zzes:Lcom/google/android/gms/drive/Contents;

.field private zzet:Z

.field private zzeu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DriveContentsImpl"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzbi;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzet:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzeu:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/Contents;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzn;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/zzn;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 47
    new-instance p3, Lcom/google/android/gms/drive/zzp;

    invoke-direct {p3}, Lcom/google/android/gms/drive/zzp;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/drive/zzn;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_6

    .line 50
    invoke-virtual {p3}, Lcom/google/android/gms/drive/ExecutionOptions;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DriveContents must be valid for conflict detection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    if-nez v0, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzbi;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 60
    :cond_3
    sget-object p2, Lcom/google/android/gms/drive/MetadataChangeSet;->zzax:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzbi;->zzj()V

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzbk;-><init>(Lcom/google/android/gms/internal/drive/zzbi;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzn;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only DriveContents obtained through DriveFile.open can be committed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DriveContents already closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot commit contents opened with MODE_READ_ONLY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    return-object p0
.end method

.method static synthetic zzx()Lcom/google/android/gms/common/internal/GmsLogger;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/android/gms/internal/drive/zzbi;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method public final commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzbi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzn;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public final commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/drive/zzn;->zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzn;

    move-result-object p3

    .line 45
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzbi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzn;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public final discard(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzbi;->zzj()V

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzbm;-><init>(Lcom/google/android/gms/internal/drive/zzbi;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzbm;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzbl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbl;-><init>(Lcom/google/android/gms/internal/drive/zzbi;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzbm;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DriveContents already closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_1

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzet:Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream() can only be called once per Contents instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream() can only be used with contents opened with MODE_READ_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMode()I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getMode()I

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getMode()I

    move-result v0

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzeu:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzeu:Z

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() can only be called once per Contents instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the output stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the output stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reopenForWrite(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
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

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzbi;->zzj()V

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzbj;-><init>(Lcom/google/android/gms/internal/drive/zzbi;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DriveContents already closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi()Lcom/google/android/gms/drive/Contents;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public final zzj()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->zzes:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    return-void
.end method

.method public final zzk()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->closed:Z

    return v0
.end method
