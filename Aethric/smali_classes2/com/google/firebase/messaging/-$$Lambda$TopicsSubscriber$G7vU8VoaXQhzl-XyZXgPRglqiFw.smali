.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic f$2:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic f$3:Lcom/google/firebase/messaging/Metadata;

.field public final synthetic f$4:Lcom/google/firebase/messaging/GmsRpc;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$2:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$3:Lcom/google/firebase/messaging/Metadata;

    iput-object p5, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$4:Lcom/google/firebase/messaging/GmsRpc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$2:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v3, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$3:Lcom/google/firebase/messaging/Metadata;

    iget-object v4, p0, Lcom/google/firebase/messaging/-$$Lambda$TopicsSubscriber$G7vU8VoaXQhzl-XyZXgPRglqiFw;->f$4:Lcom/google/firebase/messaging/GmsRpc;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/firebase/messaging/TopicsSubscriber;->lambda$createInstance$0(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;)Lcom/google/firebase/messaging/TopicsSubscriber;

    move-result-object v0

    return-object v0
.end method
