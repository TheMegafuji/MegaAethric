.class final Lcom/google/android/gms/internal/drive/zzay;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic zzel:Lcom/google/android/gms/internal/drive/zzee;

.field private final synthetic zzem:Lcom/google/android/gms/internal/drive/zzgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzee;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzay;->zzem:Lcom/google/android/gms/internal/drive/zzgs;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzay;->zzel:Lcom/google/android/gms/internal/drive/zzee;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
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
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzay;->zzem:Lcom/google/android/gms/internal/drive/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzay;->zzel:Lcom/google/android/gms/internal/drive/zzee;

    new-instance v2, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v3, 0x0

    .line 6
    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
