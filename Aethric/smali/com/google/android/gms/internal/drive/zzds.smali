.class final Lcom/google/android/gms/internal/drive/zzds;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic zzgb:Ljava/util/List;

.field private final synthetic zzgq:Lcom/google/android/gms/internal/drive/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzds;->zzgq:Lcom/google/android/gms/internal/drive/zzdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzds;->zzgb:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgw;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzds;->zzgq:Lcom/google/android/gms/internal/drive/zzdp;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzds;->zzgb:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzgw;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgw;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
