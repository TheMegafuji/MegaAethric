.class public final Lcom/google/android/gms/internal/drive/zzaw;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/drive/zzeo;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeb:Ljava/lang/String;

.field protected final zzec:Z

.field private volatile zzed:Lcom/google/android/gms/drive/DriveId;

.field private volatile zzee:Lcom/google/android/gms/drive/DriveId;

.field private volatile zzef:Z

.field private final zzeg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            "Lcom/google/android/gms/internal/drive/zzee;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzeh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/events/zzd;",
            "Lcom/google/android/gms/internal/drive/zzee;",
            ">;"
        }
    .end annotation
.end field

.field private final zzei:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/events/zzl;",
            "Lcom/google/android/gms/internal/drive/zzee;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzej:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/events/zzl;",
            "Lcom/google/android/gms/internal/drive/zzee;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzz:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Landroid/os/Bundle;)V
    .locals 7

    const/16 v3, 0xb

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzef:Z

    .line 3
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    .line 4
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeh:Ljava/util/Map;

    .line 5
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzei:Ljava/util/Map;

    .line 6
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzej:Ljava/util/Map;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeb:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzz:Landroid/os/Bundle;

    .line 9
    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.google.android.gms.drive.events.HANDLE_EVENT"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-eqz p4, :cond_2

    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 16
    iget-boolean p2, p1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz p2, :cond_0

    .line 18
    iput-boolean p5, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzec:Z

    return-void

    .line 17
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x3c

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Drive event service "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be exported in AndroidManifest.xml"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x48

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AndroidManifest.xml can only define one service that handles the "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " action"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzec:Z

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    .line 105
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzeo;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    return-object v0

    .line 108
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzep;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzep;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/drive/zzad;

    invoke-direct {v1}, Lcom/google/android/gms/internal/drive/zzad;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzad;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeh:Ljava/util/Map;

    monitor-enter v1

    .line 49
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzei:Ljava/util/Map;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzei:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 53
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzej:Ljava/util/Map;

    monitor-enter v1

    .line 55
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzej:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 53
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 50
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 47
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings;->getAllRequestedScopes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeb:Ljava/lang/String;

    const-string v2, "proxy_package_name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzz:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.drive.ApiService.START"

    return-object v0
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.drive.root_id"

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzed:Lcom/google/android/gms/drive/DriveId;

    const-string v0, "com.google.android.gms.drive.appdata_id"

    .line 60
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzee:Lcom/google/android/gms/drive/DriveId;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzef:Z

    .line 62
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/GmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final requiresAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final requiresSignIn()Z
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-static {v0, p2}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const-string v1, "listener"

    .line 66
    invoke-static {p3, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->isConnected()Z

    move-result v1

    const-string v2, "Client must be connected"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/drive/zzee;

    if-nez v3, :cond_1

    .line 75
    new-instance v3, Lcom/google/android/gms/internal/drive/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, p3}, Lcom/google/android/gms/internal/drive/zzee;-><init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V

    .line 76
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/drive/zzee;->zzg(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 78
    new-instance p2, Lcom/google/android/gms/internal/drive/zzat;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/drive/zzat;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-object p2

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/drive/zzee;->zzf(I)V

    .line 80
    new-instance p3, Lcom/google/android/gms/internal/drive/zzj;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/drive/zzj;-><init>(ILcom/google/android/gms/drive/DriveId;)V

    .line 81
    new-instance p2, Lcom/google/android/gms/internal/drive/zzax;

    invoke-direct {p2, p0, p1, p3, v3}, Lcom/google/android/gms/internal/drive/zzax;-><init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzj;Lcom/google/android/gms/internal/drive/zzee;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    .line 82
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzae()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzed:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final zzaf()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzee:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final zzag()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzef:Z

    return v0
.end method

.method public final zzah()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzec:Z

    return v0
.end method

.method final zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    invoke-static {v0, p2}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzaw;->isConnected()Z

    move-result v1

    const-string v2, "Client must be connected"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v1, "listener"

    .line 86
    invoke-static {p3, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 90
    new-instance p2, Lcom/google/android/gms/internal/drive/zzat;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/drive/zzat;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-object p2

    .line 91
    :cond_0
    invoke-interface {v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/drive/zzee;

    if-nez p3, :cond_1

    .line 93
    new-instance p2, Lcom/google/android/gms/internal/drive/zzat;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/drive/zzat;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-object p2

    .line 94
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzaw;->zzeg:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/drive/zzgs;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/drive/zzgs;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    .line 97
    new-instance p2, Lcom/google/android/gms/internal/drive/zzay;

    invoke-direct {p2, p0, p1, v2, p3}, Lcom/google/android/gms/internal/drive/zzay;-><init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzee;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    .line 98
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
