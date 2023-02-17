.class final Lcom/google/android/gms/internal/games/zzdd;
.super Lcom/google/android/gms/internal/games/zzdh;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdi;Lcom/google/android/gms/common/api/GoogleApiClient;IZ)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/games/zzdd;->zza:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/games/zzdd;->zzb:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/games/zzdh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzbz;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzdd;->zza:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/games/zzdd;->zzb:Z

    const-string v2, "played_with"

    const/4 v4, 0x0

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbz;->zzaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IZZ)V

    return-void
.end method
