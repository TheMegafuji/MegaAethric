.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;
.super Ljava/lang/Object;
.source "EventStoreModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dbName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SQLITE_DB_NAME"
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static packageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "PACKAGE_NAME"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static schemaVersion()I
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SCHEMA_VERSION"
    .end annotation

    .line 45
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->SCHEMA_VERSION:I

    return v0
.end method

.method static storeConfig()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    return-object v0
.end method


# virtual methods
.method abstract clientHealthMetricsStore(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Binds;
    .end annotation
.end method

.method abstract eventStore(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Binds;
    .end annotation
.end method

.method abstract synchronizationGuard(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Binds;
    .end annotation
.end method
