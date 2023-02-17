.class abstract Lcom/google/android/gms/internal/games/zzab;
.super Lcom/google/android/gms/games/zzj;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzab;->zza:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/games/zzab;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/games/zzab;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzaa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzaa;-><init>(Lcom/google/android/gms/internal/games/zzab;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
