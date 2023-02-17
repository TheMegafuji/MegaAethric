.class Lcom/google/android/gms/games/zzl;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/zzk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 8

    .line 1
    check-cast p4, Lcom/google/android/gms/games/Games$GamesOptions;

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/zzm;)V

    invoke-virtual {p4}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p4

    :cond_0
    move-object v4, p4

    .line 3
    new-instance p4, Lcom/google/android/gms/games/internal/zzbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/games/internal/zzcg;->zza()Lcom/google/android/gms/games/internal/zzcg;

    move-result-object v7

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/games/internal/zzbz;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;Lcom/google/android/gms/games/internal/zzcg;)V

    return-object p4
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
