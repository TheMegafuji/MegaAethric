.class final Lcom/google/android/gms/games/internal/zzbo;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/internal/zzbz;

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzbo;->zza:Lcom/google/android/gms/games/internal/zzbz;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzbo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zza;->zzm(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbo;->zza:Lcom/google/android/gms/games/internal/zzbz;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzbo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzbz;->zzL(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzbo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    .line 4
    new-instance v3, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
