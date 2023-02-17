.class public final Lcom/google/android/gms/games/internal/zzbz;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-games@@23.1.0"


# static fields
.field public static final synthetic zze:I


# instance fields
.field private final zzf:Lcom/google/android/gms/internal/games/zzfo;

.field private final zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/games/PlayerEntity;

.field private zzi:Lcom/google/android/gms/games/GameEntity;

.field private final zzj:Lcom/google/android/gms/games/internal/zzcf;

.field private zzk:Z

.field private final zzl:J

.field private final zzm:Lcom/google/android/gms/games/Games$GamesOptions;

.field private final zzn:Lcom/google/android/gms/games/internal/zzcg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;Lcom/google/android/gms/games/internal/zzcg;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    new-instance p2, Lcom/google/android/gms/games/internal/zzq;

    .line 2
    invoke-direct {p2, p0}, Lcom/google/android/gms/games/internal/zzq;-><init>(Lcom/google/android/gms/games/internal/zzbz;)V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzk:Z

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzg:Ljava/lang/String;

    .line 4
    invoke-static {p7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/games/internal/zzcg;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzn:Lcom/google/android/gms/games/internal/zzcg;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getGravityForPopups()I

    move-result p2

    invoke-static {p0, p2}, Lcom/google/android/gms/games/internal/zzcf;->zzc(Lcom/google/android/gms/games/internal/zzbz;I)Lcom/google/android/gms/games/internal/zzcf;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p5, p2

    iput-wide p5, p0, Lcom/google/android/gms/games/internal/zzbz;->zzl:J

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzbz;->zzm:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 7
    iget-boolean p2, p4, Lcom/google/android/gms/games/Games$GamesOptions;->zzh:Z

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getViewForPopups()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getViewForPopups()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/games/internal/zzcf;->zze(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/16 v0, 0x684f

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzce;->zzf()Landroid/app/PendingIntent;

    move-result-object p0

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/games/FriendsResolutionRequiredException;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zzM(Landroid/os/RemoteException;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    return-void
.end method

.method private static zzbf(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "GamesGmsClientImpl"

    const-string v1, "service died"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/games/zzft;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzi:Lcom/google/android/gms/games/GameEntity;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/games/internal/zzce;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/games/internal/zzce;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzce;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final disconnect()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzk:Z

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfo;->zzb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzce;->zzv(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "GamesGmsClientImpl"

    const-string v1, "Failed to notify client disconnect."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzft;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/games/zzd;->zzf:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzm:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/games/Games$GamesOptions;->zza()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzg:Ljava/lang/String;

    const-string v3, "com.google.android.gms.games.key.gamePackageName"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v2, "com.google.android.gms.games.key.popupWindowToken"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.google.android.gms.games.key.API_VERSION"

    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    .line 8
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.google.android.gms.games.key.signInOptions"

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getScopes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method public final bridge synthetic onConnectedLocked(Landroid/os/IInterface;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzce;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zzg()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzk:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzm:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 4
    iget-boolean v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zza:Z

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zzh:Z

    .line 5
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/games/zzfr;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzcf;->zzd()Lcom/google/android/gms/internal/games/zzfq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games/zzfr;-><init>(Lcom/google/android/gms/internal/games/zzfq;)V

    new-instance v1, Lcom/google/android/gms/games/internal/zzs;

    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/zzs;-><init>(Lcom/google/android/gms/internal/games/zzfr;)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzl:J

    .line 5
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzW(Lcom/google/android/gms/games/internal/zzcd;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzk:Z

    return-void
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 1
    const-class p1, Lcom/google/android/gms/games/internal/zzbz;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "show_welcome_popup"

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzk:Z

    const-string p1, "com.google.android.gms.games.current_player"

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/PlayerEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    const-string p1, "com.google.android.gms.games.current_game"

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/GameEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzi:Lcom/google/android/gms/games/GameEntity;

    :cond_0
    const/4 p1, 0x0

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/GmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzx;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzaV(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public final requiresAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final requiresSignIn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzm:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-object v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zzo:Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zzl:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zzh:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzA()Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzz()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzB(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzce;->zzm(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final zzC(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzbz;->zzB(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzD()Lcom/google/android/gms/games/Game;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->checkConnected()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzi:Lcom/google/android/gms/games/GameEntity;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzce;->zzp()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v2, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzi:Lcom/google/android/gms/games/GameEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/games/GameBuffer;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/games/GameBuffer;->release()V

    .line 7
    throw v1

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzi:Lcom/google/android/gms/games/GameEntity;

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final zzE()Lcom/google/android/gms/games/Game;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzD()Lcom/google/android/gms/games/Game;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzF()Lcom/google/android/gms/games/Player;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->checkConnected()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzce;->zzq()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v2, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzh:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 7
    throw v1

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final zzG()Lcom/google/android/gms/games/Player;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzF()Lcom/google/android/gms/games/Player;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzH()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzI()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzH()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzJ(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerEntity;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzce;->zzt()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzK(Z)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbz;->zzJ(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzN()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    :cond_0
    return-void
.end method

.method public final zzO(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Snapshot already closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zza()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzh;

    .line 8
    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzh;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    .line 10
    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/google/android/gms/games/internal/zzce;->zzw(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Snapshot already closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zza()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzag;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzag;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    .line 9
    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/google/android/gms/games/internal/zzce;->zzw(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzi;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzi;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzx(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzR(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzai;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzai;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzx(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzS(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Snapshot already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zzce;->zzy(Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method public final zzT(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbz;->zzS(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final zzU(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzj;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzj;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzB(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzV(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbk;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzB(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzW(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzk;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzk;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzz(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzX(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzz(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzY(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/gms/games/internal/zzce;->zzQ(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzZ(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzz;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzz;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    :goto_0
    move-object v2, v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzC(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaA(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzg;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzg;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzP(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaB(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbm;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzP(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "played_with"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbn;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzce;->zzR(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaD(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "played_with"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "friends_all"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid player collection: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzbo;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzbo;-><init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzR(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaE(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbw;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzS(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaF(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbi;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzS(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaG(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzas;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzas;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzce;->zzT(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaH(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzat;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzat;-><init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzce;->zzT(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaI(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzce;->zzU(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaJ(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbv;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzce;->zzU(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaK(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzp;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzp;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzl:J

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzV(Lcom/google/android/gms/games/internal/zzcb;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final zzaL(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzn;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzn;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzl:J

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzV(Lcom/google/android/gms/games/internal/zzcb;J)V

    return-void
.end method

.method public final zzaM(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zza()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    .line 4
    :cond_0
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v7

    .line 5
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Lcom/google/android/gms/games/internal/zzce;

    new-instance v3, Lcom/google/android/gms/games/internal/zzbt;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/games/internal/zzce;->zzX(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaN(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zza()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    .line 4
    :cond_0
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v7

    .line 5
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Lcom/google/android/gms/games/internal/zzce;

    new-instance v3, Lcom/google/android/gms/games/internal/zzbv;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/internal/zzbv;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/games/internal/zzce;->zzX(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaO(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzz;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzz;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzY(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaP(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzab;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzab;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzY(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaQ(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzz;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzz;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    :goto_0
    move-object v2, v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzZ(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaR(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzaa;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzaa;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_0
    move-object v2, v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzZ(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaS(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzcf;->zzf(I)V

    return-void
.end method

.method public final zzaT(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzcf;->zze(Landroid/view/View;)V

    return-void
.end method

.method final zzaU(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzm:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zzo:Lcom/google/android/gms/games/internal/zzf;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzaa(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzn:Lcom/google/android/gms/games/internal/zzcg;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzcg;->zzb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    :cond_0
    return-void
.end method

.method public final zzaV(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfo;->zzb()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzy;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzab(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaW(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzac(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zzaX(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzu;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzu;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    :goto_0
    move-object v2, v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzac(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaY(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzbs;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzbs;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzac(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaZ(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzz;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzz;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzad(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaa(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzaa;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzaa;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_0
    move-object v2, v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzC(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzab(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzfo;->zzc(Ljava/lang/String;I)V

    return-void
.end method

.method public final zzac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzl;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzl;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzE(Lcom/google/android/gms/games/internal/zzcb;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzad(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzE(Lcom/google/android/gms/games/internal/zzcb;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzae(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzv;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzF(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaf(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzac;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzac;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzF(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzag(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbn;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzG(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzah(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzar;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzar;-><init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v3, 0x0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzce;->zzA(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzai(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfo;->zzb()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzak;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzH(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaj(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfo;->zzb()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzal;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzal;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzH(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final varargs zzak(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfo;->zzb()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzak;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzI(Lcom/google/android/gms/games/internal/zzcb;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final varargs zzal(Lcom/google/android/gms/tasks/TaskCompletionSource;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbz;->zzf:Lcom/google/android/gms/internal/games/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfo;->zzb()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzal;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzal;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzI(Lcom/google/android/gms/games/internal/zzcb;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzam(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzw;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzw;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzJ(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzan(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzan;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzan;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzce;->zzJ(Lcom/google/android/gms/games/internal/zzcb;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzao(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbn;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzce;->zzK(Lcom/google/android/gms/games/internal/zzcb;IZZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzap(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzau;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzau;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzM(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaq(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzau;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzau;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzL(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzar(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzap;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzL(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzas(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzav;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzav;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzce;->zzM(Lcom/google/android/gms/games/internal/zzcb;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzat(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzas;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzas;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->zza()Lcom/google/android/gms/games/leaderboard/zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/zza;->zza()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzce;->zzN(Lcom/google/android/gms/games/internal/zzcb;Landroid/os/Bundle;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzau(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzat;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/zzat;-><init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->zza()Lcom/google/android/gms/games/leaderboard/zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/zza;->zza()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzce;->zzN(Lcom/google/android/gms/games/internal/zzcb;Landroid/os/Bundle;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzav(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbn;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzQ(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaw(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzbp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzbp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzQ(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzax(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzas;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzas;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzce;->zzO(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzay(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    new-instance v2, Lcom/google/android/gms/games/internal/zzat;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzat;-><init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzce;->zzO(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaz(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    new-instance v1, Lcom/google/android/gms/games/internal/zzt;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzt;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v2, 0x0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzce;->zzA(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzbz;->zzbg(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzba(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzab;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzab;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzce;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzcf;->zzb()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzbz;->zzj:Lcom/google/android/gms/games/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzcf;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzce;->zzad(Lcom/google/android/gms/games/internal/zzcb;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzbb()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/zzbz;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzce;->zzae(J)V

    return-void
.end method

.method public final zzbc()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzbb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final zzbd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzaf()Z

    move-result v0

    return v0
.end method

.method public final zzbe()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzbd()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzd()I

    move-result v0

    return v0
.end method

.method public final zzq()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzp()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    return v0
.end method

.method public final zzr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zze()I

    move-result v0

    return v0
.end method

.method public final zzs()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzr()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    return v0
.end method

.method public final zzt()Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzg()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final zzu()Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzh()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzv()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzo()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final zzw()Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->zzv()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzx(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzce;->zzi(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzy(Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/zzce;->zzk(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzbf(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final zzz()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzce;->zzl()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
