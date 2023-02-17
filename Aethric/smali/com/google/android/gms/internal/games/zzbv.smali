.class final Lcom/google/android/gms/internal/games/zzbv;
.super Lcom/google/android/gms/internal/games/zzcd;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzcm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzbv;->zza:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/games/zzbv;->zzb:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzcd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzcc;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbv;->zza:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzbv;->zzb:Z

    .line 2
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/zzbz;->zzaq(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Z)V

    return-void
.end method
