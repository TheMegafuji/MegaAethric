.class public final Lcom/google/android/play/core/missingsplits/MissingSplitsManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/missingsplits/MissingSplitsManagerFactory;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/MissingSplitsManager;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/missingsplits/zzb;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/missingsplits/zza;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/play/core/missingsplits/zza;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    sget-object v3, Lcom/google/android/play/core/missingsplits/MissingSplitsManagerFactory;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/play/core/missingsplits/zzb;-><init>(Landroid/content/Context;Ljava/lang/Runtime;Lcom/google/android/play/core/missingsplits/zza;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method
