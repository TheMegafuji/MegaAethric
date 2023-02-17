.class final Lcom/google/android/gms/internal/games/zzak;
.super Lcom/google/android/gms/internal/games/zzaq;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzar;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzak;->zza:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/games/zzak;->zzb:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzaq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzak;->zza:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzak;->zzb:I

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/zzbz;->zzab(Ljava/lang/String;I)V

    return-void
.end method
