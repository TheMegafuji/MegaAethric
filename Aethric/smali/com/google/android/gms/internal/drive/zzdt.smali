.class final Lcom/google/android/gms/internal/drive/zzdt;
.super Lcom/google/android/gms/internal/drive/zzea;


# instance fields
.field private final synthetic zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic zzgq:Lcom/google/android/gms/internal/drive/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdt;->zzgq:Lcom/google/android/gms/internal/drive/zzdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdt;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzea;-><init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzdq;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdt;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdt;->zzgq:Lcom/google/android/gms/internal/drive/zzdp;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdt;->zzfd:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzhf;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzdy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzdy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzhf;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
