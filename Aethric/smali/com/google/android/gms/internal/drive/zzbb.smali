.class public final Lcom/google/android/gms/internal/drive/zzbb;
.super Lcom/google/android/gms/drive/DriveClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    return-void
.end method


# virtual methods
.method public final getDriveId(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    const-string v0, "resourceId must not be null"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzbc;-><init>(Lcom/google/android/gms/internal/drive/zzbb;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbb;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getUploadPreferences()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/TransferPreferences;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbd;-><init>(Lcom/google/android/gms/internal/drive/zzbb;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbb;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final newCreateFileActivityIntentSender(Lcom/google/android/gms/drive/CreateFileActivityOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/CreateFileActivityOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzbg;-><init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/CreateFileActivityOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbb;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final newOpenFileActivityIntentSender(Lcom/google/android/gms/drive/OpenFileActivityOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/OpenFileActivityOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzbf;-><init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/OpenFileActivityOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbb;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final requestSync()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbh;-><init>(Lcom/google/android/gms/internal/drive/zzbb;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbb;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final setUploadPreferences(Lcom/google/android/gms/drive/TransferPreferences;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/TransferPreferences;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "transferPreferences cannot be null."

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzbe;-><init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/TransferPreferences;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbb;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
