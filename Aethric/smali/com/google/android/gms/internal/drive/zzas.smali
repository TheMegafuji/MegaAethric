.class final Lcom/google/android/gms/internal/drive/zzas;
.super Lcom/google/android/gms/internal/drive/zzl;


# instance fields
.field private final zzdx:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzas;->zzdx:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzas;->zzdx:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzaq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/drive/zzaq;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzft;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzft;->zzii:Lcom/google/android/gms/common/data/DataHolder;

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzas;->zzdx:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    new-instance v2, Lcom/google/android/gms/internal/drive/zzaq;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 8
    iget-boolean p1, p1, Lcom/google/android/gms/internal/drive/zzft;->zzea:Z

    .line 9
    invoke-direct {v2, v3, v0, p1}, Lcom/google/android/gms/internal/drive/zzaq;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V

    .line 10
    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    return-void
.end method
