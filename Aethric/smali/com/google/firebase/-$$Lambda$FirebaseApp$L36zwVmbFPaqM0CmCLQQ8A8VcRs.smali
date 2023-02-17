.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseApp$L36zwVmbFPaqM0CmCLQQ8A8VcRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/-$$Lambda$FirebaseApp$L36zwVmbFPaqM0CmCLQQ8A8VcRs;->f$0:Lcom/google/firebase/FirebaseApp;

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/-$$Lambda$FirebaseApp$L36zwVmbFPaqM0CmCLQQ8A8VcRs;->f$0:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseApp;->lambda$new$1$FirebaseApp(Z)V

    return-void
.end method
