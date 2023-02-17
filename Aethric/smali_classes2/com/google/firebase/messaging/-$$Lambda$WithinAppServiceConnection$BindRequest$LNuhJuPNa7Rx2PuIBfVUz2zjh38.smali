.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceConnection$BindRequest$LNuhJuPNa7Rx2PuIBfVUz2zjh38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceConnection$BindRequest$LNuhJuPNa7Rx2PuIBfVUz2zjh38;->f$0:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceConnection$BindRequest$LNuhJuPNa7Rx2PuIBfVUz2zjh38;->f$0:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->lambda$arrangeTimeout$1(Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
