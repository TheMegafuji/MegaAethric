.class final Lcom/google/android/gms/games/internal/zzaa;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzaa;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/String;)V
    .locals 1

    const/16 p2, 0xbbb

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzaa;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaa;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
