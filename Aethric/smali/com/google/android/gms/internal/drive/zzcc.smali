.class final Lcom/google/android/gms/internal/drive/zzcc;
.super Lcom/google/android/gms/internal/drive/zzcg;


# instance fields
.field private final synthetic zzfk:Lcom/google/android/gms/internal/drive/zzcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzcc;->zzfk:Lcom/google/android/gms/internal/drive/zzcb;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzcg;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcc;->zzfk:Lcom/google/android/gms/internal/drive/zzcb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/drive/zzce;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/drive/zzcc;)V

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->zzb(Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
