.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pahcmCpfKzBohvA6JUiC7FixzZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pahcmCpfKzBohvA6JUiC7FixzZQ;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pahcmCpfKzBohvA6JUiC7FixzZQ;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$new$2$FirebaseMessaging(Lcom/google/firebase/messaging/TopicsSubscriber;)V

    return-void
.end method
