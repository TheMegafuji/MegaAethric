.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$6vjQYKboUR3KHdEf_JpE11YaGVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$6vjQYKboUR3KHdEf_JpE11YaGVk;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$6vjQYKboUR3KHdEf_JpE11YaGVk;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$6vjQYKboUR3KHdEf_JpE11YaGVk;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmBroadcastProcessor$6vjQYKboUR3KHdEf_JpE11YaGVk;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->lambda$startMessagingService$2(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
