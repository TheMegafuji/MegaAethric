.class public abstract Lcom/google/android/gms/internal/games/zzcl;
.super Lcom/google/android/gms/games/zzj;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzck;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzck;-><init>(Lcom/google/android/gms/internal/games/zzcl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
