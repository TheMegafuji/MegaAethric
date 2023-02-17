.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pZt0yiWEI6_9Dbq-zehNQtHTSmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal$NewTokenListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pZt0yiWEI6_9Dbq-zehNQtHTSmU;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method


# virtual methods
.method public final onNewToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$pZt0yiWEI6_9Dbq-zehNQtHTSmU;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$new$0$FirebaseMessaging(Ljava/lang/String;)V

    return-void
.end method
