.class public final Lcom/google/android/gms/internal/drive/zzch;
.super Lcom/google/android/gms/drive/DriveResourceClient;


# static fields
.field private static final zzfn:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzch;->zzfn:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance p1, Lcom/google/android/gms/internal/drive/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/drive/zzg;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/drive/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method private static zze(I)V
    .locals 1

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid openMode provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addChangeListener(Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/drive/events/OnChangeListener;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            "Lcom/google/android/gms/drive/events/OnChangeListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    .line 30
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdi;

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/drive/zzdi;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/OnChangeListener;Lcom/google/android/gms/drive/DriveId;)V

    .line 33
    sget-object p2, Lcom/google/android/gms/internal/drive/zzch;->zzfn:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OnChangeListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/drive/zzch;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p2

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/drive/zzcp;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/google/android/gms/internal/drive/zzcp;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/internal/drive/zzdi;)V

    .line 36
    new-instance v2, Lcom/google/android/gms/internal/drive/zzcq;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/google/android/gms/internal/drive/zzcq;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/internal/drive/zzdi;)V

    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/drive/zzch;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/drive/zzci;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/drive/zzci;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addChangeSubscription(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-static {v1, v0}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcr;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 69
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzg;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lcom/google/android/gms/internal/drive/zzg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzg;->zzad()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzch;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized ListenerToken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final commitContents(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/google/android/gms/drive/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzp;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzn;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/drive/DriveResourceClient;->commitContents(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final commitContents(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Execution options cannot be null."

    .line 85
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "DriveContents is already closed"

    .line 88
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getMode()I

    move-result v0

    const/high16 v2, 0x10000000

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Cannot commit contents opened in MODE_READ_ONLY."

    .line 91
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 93
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    const-string v1, "Only DriveContents obtained through DriveFile.open can be committed."

    .line 94
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p3}, Lcom/google/android/gms/drive/zzn;->zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzn;

    move-result-object p3

    .line 96
    invoke-virtual {p3}, Lcom/google/android/gms/drive/ExecutionOptions;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzi()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DriveContents must be valid for conflict detection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 99
    sget-object p2, Lcom/google/android/gms/drive/MetadataChangeSet;->zzax:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 100
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcy;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/android/gms/internal/drive/zzcy;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/zzn;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final createContents()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Contents can only be created in MODE_WRITE_ONLY or MODE_READ_WRITE."

    .line 73
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcw;

    const/high16 v1, 0x20000000

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/drive/zzcw;-><init>(Lcom/google/android/gms/internal/drive/zzch;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final createFile(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    .line 117
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/DriveResourceClient;->createFile(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final createFile(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzbs;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    .line 119
    new-instance v6, Lcom/google/android/gms/internal/drive/zzdh;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zzdh;-><init>(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final createFolder(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    const-string v0, "MetadataChangeSet must be provided."

    .line 120
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The mimetype must be of type application/vnd.google-apps.folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdb;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/drive/zzdb;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveFolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcl;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final discardContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "DriveContents is already closed"

    .line 103
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 104
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzj()V

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/drive/zzda;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzda;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getAppFolder()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzco;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzco;-><init>(Lcom/google/android/gms/internal/drive/zzch;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    const-string v0, "DriveResource must not be null"

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    const-string v1, "Resource\'s DriveId must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzdc;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getRootFolder()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzck;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzck;-><init>(Lcom/google/android/gms/internal/drive/zzch;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final listChildren(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    const-string v0, "folder cannot be null."

    .line 109
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzbs;->zza(Lcom/google/android/gms/drive/query/Query;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/query/Query;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->query(Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final listParents(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/drive/zzde;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzde;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final openFile(Lcom/google/android/gms/drive/DriveFile;I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFile;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzch;->zze(I)V

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/drive/zzct;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzct;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveFile;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final openFile(Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/drive/events/OpenFileCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFile;",
            "I",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzch;->zze(I)V

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/drive/zzch;->zzfn:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OpenFileCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/internal/drive/zzch;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v7

    .line 62
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p3

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/drive/zzg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/drive/zzg;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    .line 64
    new-instance v8, Lcom/google/android/gms/internal/drive/zzcu;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/drive/zzcu;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/internal/drive/zzg;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 65
    new-instance p1, Lcom/google/android/gms/internal/drive/zzcv;

    invoke-direct {p1, p0, p3, v0}, Lcom/google/android/gms/internal/drive/zzcv;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/internal/drive/zzg;)V

    .line 66
    invoke-virtual {p0, v8, p1}, Lcom/google/android/gms/internal/drive/zzch;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/drive/zzcj;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/drive/zzcj;-><init>(Lcom/google/android/gms/internal/drive/zzg;)V

    .line 67
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final query(Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    const-string v0, "query cannot be null."

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcz;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/query/Query;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final queryChildren(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    const-string v0, "folder cannot be null."

    .line 113
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "query cannot be null."

    .line 114
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzbs;->zza(Lcom/google/android/gms/drive/query/Query;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/query/Query;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->query(Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final removeChangeListener(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Token is required to unregister listener."

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzg;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/drive/zzg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzg;->zzad()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzch;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not recover key from ListenerToken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeChangeSubscription(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcs;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final reopenContentsForWrite(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "DriveContents is already closed"

    .line 78
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 80
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getMode()I

    move-result v0

    const/high16 v2, 0x10000000

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "This method can only be called on contents that are currently opened in MODE_READ_ONLY."

    .line 81
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzj()V

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcx;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final setParents(Lcom/google/android/gms/drive/DriveResource;Ljava/util/Set;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    new-instance p2, Lcom/google/android/gms/internal/drive/zzdf;

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzdf;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final trash(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcm;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final untrash(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzcn;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final updateMetadata(Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdd;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/drive/zzdd;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzch;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
