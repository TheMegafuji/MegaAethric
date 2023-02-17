.class final Lcom/google/android/gms/internal/games/zzby;
.super Lcom/google/android/gms/internal/games/zzcj;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:I

.field final synthetic zzc:I

.field final synthetic zzd:I

.field final synthetic zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzcm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzby;->zza:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/games/zzby;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/games/zzby;->zzc:I

    iput p6, p0, Lcom/google/android/gms/internal/games/zzby;->zzd:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/games/zzby;->zze:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzcj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzci;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzbz;

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzby;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzby;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/games/zzby;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/games/zzby;->zzd:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games/zzby;->zze:Z

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzbz;->zzax(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V

    return-void
.end method
