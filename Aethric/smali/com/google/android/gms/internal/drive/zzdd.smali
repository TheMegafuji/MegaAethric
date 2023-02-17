.class final Lcom/google/android/gms/internal/drive/zzdd;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic zzfq:Lcom/google/android/gms/drive/DriveResource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveResource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdd;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdd;->zzfq:Lcom/google/android/gms/drive/DriveResource;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdd;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhf;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdd;->zzfq:Lcom/google/android/gms/drive/DriveResource;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdd;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzhf;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhp;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzhf;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
