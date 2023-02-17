.class final Lcom/google/android/gms/internal/drive/zzbg;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/CreateFileActivityOptions;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v1, v1, Lcom/google/android/gms/drive/CreateFileActivityOptions;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Landroid/content/Context;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/drive/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v3, v1, Lcom/google/android/gms/drive/CreateFileActivityOptions;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v1, v1, Lcom/google/android/gms/drive/CreateFileActivityOptions;->zzdk:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v5, v1, Lcom/google/android/gms/drive/CreateFileActivityOptions;->zzba:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v6, v1, Lcom/google/android/gms/drive/CreateFileActivityOptions;->zzbd:Lcom/google/android/gms/drive/DriveId;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget v1, v1, Lcom/google/android/gms/drive/CreateFileActivityOptions;->zzdl:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zzu;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzu;)Landroid/content/IntentSender;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
