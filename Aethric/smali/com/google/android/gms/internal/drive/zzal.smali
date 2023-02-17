.class final Lcom/google/android/gms/internal/drive/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;


# instance fields
.field private final zzdy:Lcom/google/android/gms/common/api/Status;

.field private final zzo:Lcom/google/android/gms/drive/DriveContents;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzal;->zzdy:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzal;->zzo:Lcom/google/android/gms/drive/DriveContents;

    return-void
.end method


# virtual methods
.method public final getDriveContents()Lcom/google/android/gms/drive/DriveContents;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzal;->zzo:Lcom/google/android/gms/drive/DriveContents;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzal;->zzdy:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzal;->zzo:Lcom/google/android/gms/drive/DriveContents;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzj()V

    :cond_0
    return-void
.end method
