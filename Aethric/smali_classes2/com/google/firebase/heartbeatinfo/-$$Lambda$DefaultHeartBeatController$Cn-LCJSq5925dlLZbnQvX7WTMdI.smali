.class public final synthetic Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatController$Cn-LCJSq5925dlLZbnQvX7WTMdI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatController$Cn-LCJSq5925dlLZbnQvX7WTMdI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatController$Cn-LCJSq5925dlLZbnQvX7WTMdI;

    invoke-direct {v0}, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatController$Cn-LCJSq5925dlLZbnQvX7WTMdI;-><init>()V

    sput-object v0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatController$Cn-LCJSq5925dlLZbnQvX7WTMdI;->INSTANCE:Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatController$Cn-LCJSq5925dlLZbnQvX7WTMdI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
