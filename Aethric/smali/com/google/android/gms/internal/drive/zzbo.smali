.class final Lcom/google/android/gms/internal/drive/zzbo;
.super Lcom/google/android/gms/internal/drive/zzam;


# instance fields
.field private final synthetic zzdv:I

.field private final synthetic zzey:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private final synthetic zzez:Lcom/google/android/gms/internal/drive/zzbn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbn;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzez:Lcom/google/android/gms/internal/drive/zzbn;

    iput p3, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzdv:I

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzey:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzam;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzez:Lcom/google/android/gms/internal/drive/zzbn;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzdp;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzdv:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzgj;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzey:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/drive/zzgl;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgj;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzec;->zzgs:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ICancelToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzbo;->setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V

    return-void
.end method
