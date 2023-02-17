.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceConnection$BindRequest$q2lY3eBA-mAP7rnHajlxCi2ptuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceConnection$BindRequest$q2lY3eBA-mAP7rnHajlxCi2ptuM;->f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceConnection$BindRequest$q2lY3eBA-mAP7rnHajlxCi2ptuM;->f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->lambda$arrangeTimeout$0$WithinAppServiceConnection$BindRequest()V

    return-void
.end method
