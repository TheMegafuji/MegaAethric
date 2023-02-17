.class final Lcom/google/android/gms/games/internal/zzq;
.super Lcom/google/android/gms/internal/games/zzfo;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/internal/zzbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzbz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzq;->zza:Lcom/google/android/gms/games/internal/zzbz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/games/zzfn;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzam;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzq;->zza:Lcom/google/android/gms/games/internal/zzbz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzam;-><init>(Lcom/google/android/gms/games/internal/zzbz;)V

    return-object v0
.end method
