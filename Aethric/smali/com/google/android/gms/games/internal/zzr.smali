.class final Lcom/google/android/gms/games/internal/zzr;
.super Lcom/google/android/gms/games/internal/zzay;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/internal/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzbq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzr;->zza:Lcom/google/android/gms/games/internal/zzbq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzay;-><init>(Lcom/google/android/gms/games/internal/zzax;)V

    return-void
.end method


# virtual methods
.method public final notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzr;->zza:Lcom/google/android/gms/games/internal/zzbq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/zzbq;->zza(Ljava/lang/Object;)V

    return-void
.end method
