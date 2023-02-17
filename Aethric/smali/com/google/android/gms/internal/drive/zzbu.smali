.class final Lcom/google/android/gms/internal/drive/zzbu;
.super Lcom/google/android/gms/internal/drive/zzca;


# instance fields
.field private final synthetic zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic zzfh:Lcom/google/android/gms/internal/drive/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbu;->zzfh:Lcom/google/android/gms/internal/drive/zzbs;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzbu;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzca;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbu;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbu;->zzfh:Lcom/google/android/gms/internal/drive/zzbs;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzdp;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbu;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzy;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzbw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzbw;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzy;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
