.class public final Lcom/google/android/gms/maps/internal/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static zzb:Landroid/content/Context;

.field private static zzc:Lcom/google/android/gms/maps/internal/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/maps/internal/zzca;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzb:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;)Lcom/google/android/gms/maps/internal/zzf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferredRenderer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzc:Lcom/google/android/gms/maps/internal/zzf;

    if-nez v0, :cond_3

    const v0, 0xcc77c0

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    const-string v1, "Making Creator dynamically"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/internal/zzca;->zzc(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzca;->zzd(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    .line 9
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 10
    instance-of v2, v1, Lcom/google/android/gms/maps/internal/zzf;

    if-eqz v2, :cond_1

    .line 11
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/maps/internal/zzf;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/internal/zze;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/internal/zze;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 8
    :goto_0
    sput-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzc:Lcom/google/android/gms/maps/internal/zzf;

    .line 12
    :try_start_1
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/internal/zzca;->zzc(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;)Landroid/content/Context;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    sget p1, Lcom/google/android/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 16
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/maps/internal/zzf;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p0, Lcom/google/android/gms/maps/internal/zzca;->zzc:Lcom/google/android/gms/maps/internal/zzf;

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 17
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    .line 18
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to find dynamic class com.google.android.gms.maps.internal.CreatorImpl"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_2
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    :cond_3
    return-object v0
.end method

.method private static zzb(Ljava/lang/Exception;Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    const-string v1, "Failed to load maps module, use pre-Chimera"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;)Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzb:Landroid/content/Context;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string v0, "com.google.android.gms.maps_dynamite"

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.maps_core_dynamite"

    goto :goto_1

    :cond_1
    const-string p1, "com.google.android.gms.maps_legacy_dynamite"

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, v0

    .line 3
    :goto_1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 4
    invoke-static {p0, v1, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_1
    sget-object p1, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    const-string v1, "Attempting to load maps_dynamite again."

    .line 7
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 9
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 11
    invoke-static {p1, p0}, Lcom/google/android/gms/maps/internal/zzca;->zzb(Ljava/lang/Exception;Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v1, p0}, Lcom/google/android/gms/maps/internal/zzca;->zzb(Ljava/lang/Exception;Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 5
    :goto_2
    sput-object p0, Lcom/google/android/gms/maps/internal/zzca;->zzb:Landroid/content/Context;

    return-object p0

    :cond_4
    return-object v0
.end method

.method private static zzd(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to call the default constructor of "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 2
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to instantiate the dynamic class "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 3
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
