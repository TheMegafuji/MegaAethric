.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$FcmLifecycleCallbacks$0LuQnwB891AOjHPZwhp7QvIsDUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/FcmLifecycleCallbacks;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FcmLifecycleCallbacks;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmLifecycleCallbacks$0LuQnwB891AOjHPZwhp7QvIsDUM;->f$0:Lcom/google/firebase/messaging/FcmLifecycleCallbacks;

    iput-object p2, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmLifecycleCallbacks$0LuQnwB891AOjHPZwhp7QvIsDUM;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmLifecycleCallbacks$0LuQnwB891AOjHPZwhp7QvIsDUM;->f$0:Lcom/google/firebase/messaging/FcmLifecycleCallbacks;

    iget-object v1, p0, Lcom/google/firebase/messaging/-$$Lambda$FcmLifecycleCallbacks$0LuQnwB891AOjHPZwhp7QvIsDUM;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->lambda$onActivityCreated$0$FcmLifecycleCallbacks(Landroid/content/Intent;)V

    return-void
.end method
