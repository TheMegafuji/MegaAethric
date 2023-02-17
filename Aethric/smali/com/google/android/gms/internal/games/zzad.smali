.class public Lcom/google/android/gms/internal/games/zzad;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method


# virtual methods
.method protected final createClientSettingsBuilder()Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/GoogleApi;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/ClientSettings$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzad;->getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzad;->getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-object v1, v1, Lcom/google/android/gms/games/Games$GamesOptions;->zzl:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
