.class final Lcom/google/android/gms/internal/drive/zzcz;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/MetadataBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdu:Lcom/google/android/gms/drive/query/Query;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcz;->zzdu:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcz;->zzdu:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzgq;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhn;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgq;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
