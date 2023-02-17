.class public final Lcom/google/android/gms/internal/drive/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/ListenerToken;


# instance fields
.field private final zzcy:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

.field private zzcz:Lcom/google/android/gms/common/internal/ICancelToken;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzg;->zzcz:Lcom/google/android/gms/common/internal/ICancelToken;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzg;->zzcy:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzg;->zzcz:Lcom/google/android/gms/common/internal/ICancelToken;

    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzg;->zzcz:Lcom/google/android/gms/common/internal/ICancelToken;

    return-void
.end method

.method public final zzad()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzg;->zzcy:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-object v0
.end method
