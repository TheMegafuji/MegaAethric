.class final Lcom/google/android/gms/internal/games/zzca;
.super Lcom/google/android/gms/internal/games/zzcl;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:J

.field final synthetic zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzcm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzca;->zza:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/games/zzca;->zzb:J

    iput-object p6, p0, Lcom/google/android/gms/internal/games/zzca;->zzc:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/games/zzcl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzca;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/games/zzca;->zzb:J

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzca;->zzc:Ljava/lang/String;

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbz;->zzaX(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
