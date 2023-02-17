.class final Lcom/google/android/play/core/appupdate/zzq;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zzb:Lcom/google/android/play/core/internal/zzag;

.field private static final zzc:Landroid/content/Intent;


# instance fields
.field zza:Lcom/google/android/play/core/internal/zzas;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/play/core/appupdate/zzs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "AppUpdateService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzc:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzs;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzq;->zzf:Lcom/google/android/play/core/appupdate/zzs;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/google/android/play/core/internal/zzas;

    .line 4
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    sget-object v4, Lcom/google/android/play/core/appupdate/zzq;->zzc:Landroid/content/Intent;

    sget-object v5, Lcom/google/android/play/core/appupdate/zzk;->zza:Lcom/google/android/play/core/appupdate/zzk;

    const/4 v6, 0x0

    const-string v3, "AppUpdateService"

    move-object v0, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/internal/zzas;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/zzag;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/zzan;Lcom/google/android/play/core/internal/zzam;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    :cond_0
    return-void
.end method

.method static bridge synthetic zza(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "error.code"

    const/4 v1, -0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/play/core/appupdate/zzq;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzi()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "package.name"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 7
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "The current version of the app could not be retrieved"

    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "app.version.code"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method static bridge synthetic zzc()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzi()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/play/core/appupdate/zzq;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "version.code"

    const/4 v2, -0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "update.availability"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "install.status"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "client.version.staleness"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const-string v1, "in.app.update.priority"

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "bytes.downloaded"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "total.bytes.to.download"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v1, "additional.size.required"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/zzq;->zzf:Lcom/google/android/play/core/appupdate/zzs;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzs;->zza()J

    move-result-wide v15

    const-string v1, "blocking.intent"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/app/PendingIntent;

    const-string v1, "nonblocking.intent"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/app/PendingIntent;

    const-string v1, "blocking.destructive.intent"

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/app/PendingIntent;

    const-string v1, "nonblocking.destructive.intent"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/PendingIntent;

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v20}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zze()Lcom/google/android/play/core/internal/zzag;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    return-object v0
.end method

.method static bridge synthetic zzh(Lcom/google/android/play/core/appupdate/zzq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method private static zzi()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_update"

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/common/PlayCoreVersion;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "playcore.version.code"

    const/16 v2, 0x2afb

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static zzj()Lcom/google/android/play/core/tasks/Task;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    .line 2
    invoke-direct {v0, v2}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->zza(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;)Lcom/google/android/play/core/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzj()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "completeUpdate(%s)"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/zzi;

    .line 3
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v2, Lcom/google/android/play/core/appupdate/zzm;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/internal/zzas;->zzq(Lcom/google/android/play/core/internal/zzah;Lcom/google/android/play/core/tasks/zzi;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/zzi;->zza()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/play/core/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzj()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/internal/zzag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "requestUpdateInfo(%s)"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/zzi;

    .line 3
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v2, Lcom/google/android/play/core/appupdate/zzl;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/appupdate/zzl;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;Lcom/google/android/play/core/tasks/zzi;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/internal/zzas;->zzq(Lcom/google/android/play/core/internal/zzah;Lcom/google/android/play/core/tasks/zzi;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/zzi;->zza()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
