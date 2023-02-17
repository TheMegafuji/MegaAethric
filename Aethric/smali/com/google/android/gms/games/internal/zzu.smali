.class final Lcom/google/android/gms/games/internal/zzu;
.super Lcom/google/android/gms/games/internal/zzbr;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzbr;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final zzn(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzbx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzbx;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzbr;->zzw(Ljava/lang/Object;)V

    return-void
.end method
