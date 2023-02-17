.class final Lcom/google/android/play/core/missingsplits/zzb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/missingsplits/MissingSplitsManager;


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/Runtime;

.field private final zzd:Lcom/google/android/play/core/missingsplits/zza;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "MissingSplitsManagerImpl"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Runtime;Lcom/google/android/play/core/missingsplits/zza;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzc:Ljava/lang/Runtime;

    iput-object p3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    iput-object p4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zza()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final disableAppIfMissingRequiredSplits()Z
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 48
    :cond_1
    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 3
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.android.vending.splits.required"

    .line 6
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v1, :cond_2

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 15
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v5, Ljava/util/HashSet;

    .line 9
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_3

    .line 10
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 11
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v1, v5

    goto :goto_1

    .line 7
    :catch_0
    :try_start_4
    sget-object v1, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 12
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "App \'%s\' is not found in PackageManager"

    invoke-virtual {v1, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 15
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v5, v4, :cond_0

    const-string v5, ""

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 34
    :catch_1
    sget-object v1, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 7
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "App \'%s\' is not found in the PackageManager"

    invoke-virtual {v1, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 16
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_e

    .line 19
    invoke-direct {p0}, Lcom/google/android/play/core/missingsplits/zzb;->zza()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 21
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_8

    .line 26
    :cond_7
    invoke-direct {p0}, Lcom/google/android/play/core/missingsplits/zzb;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 27
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 28
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_8

    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 29
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 30
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 32
    :try_start_5
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    if-eqz v1, :cond_8

    const-class v3, Landroid/app/Activity;

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    .line 36
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_a

    move-object v1, v3

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 18
    :catch_2
    sget-object v5, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v3, "ClassNotFoundException when scanning class hierarchy of \'%s\'"

    .line 33
    invoke-virtual {v5, v3, v6}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_6
    iget-object v3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v1, :cond_8

    goto :goto_5

    :catch_3
    nop

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 35
    :goto_6
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/play/core/missingsplits/zza;->zza()V

    .line 38
    invoke-direct {p0}, Lcom/google/android/play/core/missingsplits/zzb;->zza()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 39
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_7

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    const-class v5, Lcom/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    const-class v3, Lcom/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity;

    .line 42
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34c00000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 44
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzc:Ljava/lang/Runtime;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exit(I)V

    :goto_8
    return v4

    .line 36
    :cond_e
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/play/core/missingsplits/zza;->zzc()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzd:Lcom/google/android/play/core/missingsplits/zza;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/play/core/missingsplits/zza;->zzb()V

    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzc:Ljava/lang/Runtime;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exit(I)V

    :cond_f
    return v2

    :catchall_0
    move-exception v1

    .line 18
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    :cond_10
    return v2
.end method

.method public final isMissingRequiredSplits()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.android.vending.splits.required"

    .line 6
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_2

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 15
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_3

    .line 10
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 11
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 7
    :catch_0
    :try_start_4
    sget-object v2, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 12
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "App \'%s\' is not found in PackageManager"

    invoke-virtual {v2, v6, v3}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 15
    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 18
    :catch_1
    sget-object v2, Lcom/google/android/play/core/missingsplits/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/play/core/missingsplits/zzb;->zzb:Landroid/content/Context;

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "App \'%s\' is not found in the PackageManager"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 16
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/play/core/missingsplits/zzb;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
