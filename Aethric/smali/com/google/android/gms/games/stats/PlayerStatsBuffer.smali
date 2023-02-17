.class public final Lcom/google/android/gms/games/stats/PlayerStatsBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "Lcom/google/android/gms/games/stats/PlayerStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->zza(I)Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object p1

    return-object p1
.end method

.method public final zza(I)Lcom/google/android/gms/games/stats/PlayerStats;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/stats/zzb;

    iget-object v1, p0, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/stats/zzb;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
