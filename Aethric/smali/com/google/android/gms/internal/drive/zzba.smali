.class final Lcom/google/android/gms/internal/drive/zzba;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic zzen:Lcom/google/android/gms/drive/DriveId;

.field private final synthetic zzeo:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzba;->zzen:Lcom/google/android/gms/drive/DriveId;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzba;->zzeo:I

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzba;->zzen:Lcom/google/android/gms/drive/DriveId;

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzba;->zzeo:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzgs;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v0, v2, v2, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
