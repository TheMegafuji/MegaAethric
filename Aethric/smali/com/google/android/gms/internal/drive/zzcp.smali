.class final Lcom/google/android/gms/internal/drive/zzcp;
.super Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/internal/drive/zzdi;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfq:Lcom/google/android/gms/drive/DriveResource;

.field private final synthetic zzfr:Lcom/google/android/gms/internal/drive/zzdi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/internal/drive/zzdi;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzcp;->zzfq:Lcom/google/android/gms/drive/DriveResource;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzcp;->zzfr:Lcom/google/android/gms/internal/drive/zzdi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic registerListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcp;->zzfq:Lcom/google/android/gms/drive/DriveResource;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/drive/zzj;-><init>(ILcom/google/android/gms/drive/DriveId;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcp;->zzfr:Lcom/google/android/gms/internal/drive/zzdi;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzdi;->zza(Lcom/google/android/gms/internal/drive/zzdi;)Lcom/google/android/gms/internal/drive/zzee;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/drive/zzhr;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/drive/zzhr;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 p2, 0x0

    .line 8
    invoke-interface {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzj;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
