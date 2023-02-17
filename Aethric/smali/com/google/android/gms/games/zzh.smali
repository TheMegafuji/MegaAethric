.class final Lcom/google/android/gms/games/zzh;
.super Lcom/google/android/gms/games/zzl;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/zzl;-><init>(Lcom/google/android/gms/games/zzk;)V

    return-void
.end method


# virtual methods
.method public final synthetic getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    .line 2
    sget-object p1, Lcom/google/android/gms/games/Games;->zzb:Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
