.class public Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.super Lcom/google/android/gms/common/data/EntityBuffer;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/EntityBuffer<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/EntityBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic getEntry(II)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected final getPrimaryDataMarkerColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "external_leaderboard_id"

    return-object v0
.end method
