.class public final Lcom/google/android/play/core/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field static final zza:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/tasks/zzl;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzl;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/tasks/zzk;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzk;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
