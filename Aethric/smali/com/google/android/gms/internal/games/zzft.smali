.class public final Lcom/google/android/gms/internal/games/zzft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/games/zzft;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games/zzft;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p0}, Lcom/google/android/gms/internal/games/zzft;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/games/zzft;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "GamesGmsClientImpl"

    invoke-static {p1}, Lcom/google/android/gms/internal/games/zzft;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Is player signed out?"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/games/zzft;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p1, "SnapshotContentsEntity"

    invoke-static {p1}, Lcom/google/android/gms/internal/games/zzft;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to write snapshot data"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games/zzft;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p0}, Lcom/google/android/gms/internal/games/zzft;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games/zzft;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p0}, Lcom/google/android/gms/internal/games/zzft;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "PlayGamesServices"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s[%s]"

    .line 1
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
