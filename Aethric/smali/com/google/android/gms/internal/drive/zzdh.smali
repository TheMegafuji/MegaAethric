.class final Lcom/google/android/gms/internal/drive/zzdh;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/DriveFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfj:Lcom/google/android/gms/drive/DriveFolder;

.field private final zzgc:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private zzgd:Lcom/google/android/gms/drive/ExecutionOptions;

.field private zzge:Ljava/lang/String;

.field private zzgf:Lcom/google/android/gms/drive/metadata/internal/zzk;

.field private final zzo:Lcom/google/android/gms/drive/DriveContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzfj:Lcom/google/android/gms/drive/DriveFolder;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgc:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzo:Lcom/google/android/gms/drive/DriveContents;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgd:Lcom/google/android/gms/drive/ExecutionOptions;

    const/4 p5, 0x0

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzge:Ljava/lang/String;

    const-string p5, "DriveFolder must not be null"

    .line 7
    invoke-static {p1, p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    const-string p5, "Folder\'s DriveId must not be null"

    invoke-static {p1, p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "MetadataChangeSet must not be null"

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ExecutionOptions must not be null"

    .line 10
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgf:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->isFolder()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "May not create folders using this method. Use DriveFolderManagerClient#createFolder() instead of mime type application/vnd.google-apps.folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_5

    .line 15
    instance-of p1, p3, Lcom/google/android/gms/internal/drive/zzbi;

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    if-nez p1, :cond_3

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->zzk()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DriveContents are already closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgd:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/internal/drive/zzaw;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgc:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Landroid/content/Context;)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzo:Lcom/google/android/gms/drive/DriveContents;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgf:Lcom/google/android/gms/drive/metadata/internal/zzk;

    .line 28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/drive/zzbs;->zza(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzk;)I

    move-result v6

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgf:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzbh()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 32
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/drive/zzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzfj:Lcom/google/android/gms/drive/DriveFolder;

    .line 33
    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v4

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/gms/internal/drive/zzdh;->zzgd:Lcom/google/android/gms/drive/ExecutionOptions;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/drive/zzw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhj;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/drive/zzhj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 38
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzw;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
