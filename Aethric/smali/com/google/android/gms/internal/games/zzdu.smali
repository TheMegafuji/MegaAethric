.class final Lcom/google/android/gms/internal/games/zzdu;
.super Lcom/google/android/gms/internal/games/zzej;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Z

.field final synthetic zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzek;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdu;->zza:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/games/zzdu;->zzb:Z

    iput p5, p0, Lcom/google/android/gms/internal/games/zzdu;->zzc:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzej;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzei;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdu;->zza:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzdu;->zzb:Z

    iget v2, p0, Lcom/google/android/gms/internal/games/zzdu;->zzc:I

    .line 2
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzbz;->zzaI(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;ZI)V

    return-void
.end method
