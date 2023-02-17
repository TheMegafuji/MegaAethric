.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceBinder$hXZDRf9tbR8HZtzmcy-1Yt2RDoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceBinder$hXZDRf9tbR8HZtzmcy-1Yt2RDoI;->f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$WithinAppServiceBinder$hXZDRf9tbR8HZtzmcy-1Yt2RDoI;->f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/WithinAppServiceBinder;->lambda$send$0(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
