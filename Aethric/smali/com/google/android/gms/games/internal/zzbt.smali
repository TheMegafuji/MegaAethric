.class final Lcom/google/android/gms/games/internal/zzbt;
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
.method public final zzq(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/games/internal/zzbl;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/games/internal/zzbr;->zzw(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/games/internal/zzbl;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    .line 1
    invoke-virtual {p0, v6}, Lcom/google/android/gms/games/internal/zzbr;->zzw(Ljava/lang/Object;)V

    return-void
.end method
