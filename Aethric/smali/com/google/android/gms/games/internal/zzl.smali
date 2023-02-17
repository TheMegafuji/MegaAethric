.class final Lcom/google/android/gms/games/internal/zzl;
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
.method public final zzu(IZ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzad;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzad;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzbr;->zzw(Ljava/lang/Object;)V

    return-void
.end method
