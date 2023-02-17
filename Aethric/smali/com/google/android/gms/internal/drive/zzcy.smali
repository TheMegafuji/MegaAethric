.class final Lcom/google/android/gms/internal/drive/zzcy;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzew:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic zzfx:Lcom/google/android/gms/drive/DriveContents;

.field private final synthetic zzfy:Lcom/google/android/gms/drive/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/zzn;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfy:Lcom/google/android/gms/drive/zzn;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzew:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfy:Lcom/google/android/gms/drive/zzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/internal/drive/zzaw;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzj()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzew:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 11
    new-instance v6, Lcom/google/android/gms/internal/drive/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzew:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzi()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzi()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->zzb()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/drive/zzcy;->zzfy:Lcom/google/android/gms/drive/zzn;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zzm;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzn;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzhr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/drive/zzhr;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 16
    invoke-interface {p1, v6, v0}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzm;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
