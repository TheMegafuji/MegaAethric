.class public final synthetic Lcom/google/android/play/core/assetpacks/zzn;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/assetpacks/zzn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzn;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/zzn;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzn;->zza:Lcom/google/android/play/core/assetpacks/zzn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AssetPackBackgroundExecutor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
