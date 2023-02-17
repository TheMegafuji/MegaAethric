.class public Lcom/google/firebase/crashlytics/internal/common/IdManager;
.super Ljava/lang/Object;
.source "IdManager.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;


# static fields
.field public static final DEFAULT_VERSION_NAME:Ljava/lang/String; = "0.0"

.field private static final FORWARD_SLASH_REGEX:Ljava/lang/String;

.field private static final ID_PATTERN:Ljava/util/regex/Pattern;

.field static final PREFKEY_ADVERTISING_ID:Ljava/lang/String; = "crashlytics.advertising.id"

.field static final PREFKEY_FIREBASE_IID:Ljava/lang/String; = "firebase.installation.id"

.field static final PREFKEY_INSTALLATION_UUID:Ljava/lang/String; = "crashlytics.installation.id"

.field static final PREFKEY_LEGACY_INSTALLATION_UUID:Ljava/lang/String; = "crashlytics.installation.id"

.field private static final SYNTHETIC_FID_PREFIX:Ljava/lang/String; = "SYN_"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final appIdentifier:Ljava/lang/String;

.field private crashlyticsInstallId:Ljava/lang/String;

.field private final dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

.field private final firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final installerPackageNameProvider:Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\\p{Alnum}]"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "/"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 75
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appIdentifier:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 78
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    .line 80
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;

    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->installerPackageNameProvider:Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appIdentifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appContext must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized createAndCacheCrashlyticsInstallId(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->formatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new Crashlytics installation ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for FID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 185
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "crashlytics.installation.id"

    .line 186
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "firebase.installation.id"

    .line 187
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static createSyntheticFid()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchTrueFid()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 171
    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/Utils;->awaitEvenIfOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Failed to retrieve Firebase Installations ID."

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static formatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static isSyntheticFid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "SYN_"

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readCachedCrashlyticsInstallId(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    .line 161
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 226
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAppIdentifier()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCrashlyticsInstallId()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Determining Crashlytics installation ID..."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firebase.installation.id"

    const/4 v2, 0x0

    .line 111
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached Firebase Installation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->fetchTrueFid()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetched Firebase Installation ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createSyntheticFid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 126
    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->readCachedCrashlyticsInstallId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createAndCacheCrashlyticsInstallId(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_4
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->isSyntheticFid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->readCachedCrashlyticsInstallId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createSyntheticFid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createAndCacheCrashlyticsInstallId(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 145
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Unable to determine Crashlytics Install Id, creating a new one."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createSyntheticFid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createAndCacheCrashlyticsInstallId(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 148
    :cond_6
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics installation ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->installerPackageNameProvider:Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 4

    .line 218
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 221
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 222
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s/%s"

    .line 218
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsBuildVersionString()Ljava/lang/String;
    .locals 1

    .line 210
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsDisplayVersionString()Ljava/lang/String;
    .locals 1

    .line 202
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
