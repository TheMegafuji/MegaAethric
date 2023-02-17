.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$5Y63K14lse0aDUI-3iypzwmhKrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$5Y63K14lse0aDUI-3iypzwmhKrc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$5Y63K14lse0aDUI-3iypzwmhKrc;

    invoke-direct {v0}, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$5Y63K14lse0aDUI-3iypzwmhKrc;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$5Y63K14lse0aDUI-3iypzwmhKrc;->INSTANCE:Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$5Y63K14lse0aDUI-3iypzwmhKrc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->lambda$startMessagingService$1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
