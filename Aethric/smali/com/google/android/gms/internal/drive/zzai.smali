.class final Lcom/google/android/gms/internal/drive/zzai;
.super Lcom/google/android/gms/internal/drive/zzap;


# instance fields
.field private final synthetic zzdw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzai;->zzdw:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzap;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzai;->zzdw:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/drive/DriveId;->zza(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzek;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzan;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzan;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzek;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
