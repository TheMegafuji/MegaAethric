.class Lcom/google/android/gms/games/internal/zzaw;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    const-string v0, "Callback must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzaw;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method final zzw(Lcom/google/android/gms/games/internal/zzbq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaw;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    sget v1, Lcom/google/android/gms/games/internal/zzbz;->zze:I

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/zzr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzr;-><init>(Lcom/google/android/gms/games/internal/zzbq;)V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
