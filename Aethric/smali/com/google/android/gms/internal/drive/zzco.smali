.class final Lcom/google/android/gms/internal/drive/zzco;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/DriveFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzaf()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "Drive#SCOPE_APPFOLDER must be requested"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzaf()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbs;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
