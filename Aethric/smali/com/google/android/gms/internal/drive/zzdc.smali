.class final Lcom/google/android/gms/internal/drive/zzdc;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfq:Lcom/google/android/gms/drive/DriveResource;

.field private final synthetic zzga:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzfq:Lcom/google/android/gms/drive/DriveResource;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzga:Z

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

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzfq:Lcom/google/android/gms/drive/DriveResource;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzga:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzek;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhp;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzek;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
