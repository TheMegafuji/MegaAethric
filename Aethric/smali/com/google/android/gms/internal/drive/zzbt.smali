.class final Lcom/google/android/gms/internal/drive/zzbt;
.super Lcom/google/android/gms/internal/drive/zzby;


# instance fields
.field private final synthetic zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic zzfe:I

.field private final synthetic zzff:I

.field private final synthetic zzfg:Lcom/google/android/gms/drive/ExecutionOptions;

.field private final synthetic zzfh:Lcom/google/android/gms/internal/drive/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfh:Lcom/google/android/gms/internal/drive/zzbs;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfe:I

    iput p5, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzff:I

    iput-object p6, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfg:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzby;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/drive/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfh:Lcom/google/android/gms/internal/drive/zzbs;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzdp;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfe:I

    iget v6, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzff:I

    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzbt;->zzfg:Lcom/google/android/gms/drive/ExecutionOptions;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zzw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/drive/zzbv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzbv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzw;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
