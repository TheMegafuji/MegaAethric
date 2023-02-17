.class final Lcom/google/android/gms/internal/drive/zzcx;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/DriveContents;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfx:Lcom/google/android/gms/drive/DriveContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveContents;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcx;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcx;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzcx;->zzfx:Lcom/google/android/gms/drive/DriveContents;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveContents;->zzi()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/drive/zzgj;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhi;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgj;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    return-void
.end method
