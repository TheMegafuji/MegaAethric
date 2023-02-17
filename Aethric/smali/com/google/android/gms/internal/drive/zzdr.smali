.class final Lcom/google/android/gms/internal/drive/zzdr;
.super Lcom/google/android/gms/internal/drive/zzar;


# instance fields
.field private final synthetic zzgq:Lcom/google/android/gms/internal/drive/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdp;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdr;->zzgq:Lcom/google/android/gms/internal/drive/zzdp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzar;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzex;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdr;->zzgq:Lcom/google/android/gms/internal/drive/zzdp;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzdp;->zzk:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzex;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzdx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzdx;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzex;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
