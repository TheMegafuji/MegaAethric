.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$ImageDownload$1Xn11wJGkQ0YswSUNQTBL7K7Rek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/ImageDownload;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/ImageDownload;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$ImageDownload$1Xn11wJGkQ0YswSUNQTBL7K7Rek;->f$0:Lcom/google/firebase/messaging/ImageDownload;

    iput-object p2, p0, Lcom/google/firebase/messaging/-$$Lambda$ImageDownload$1Xn11wJGkQ0YswSUNQTBL7K7Rek;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$ImageDownload$1Xn11wJGkQ0YswSUNQTBL7K7Rek;->f$0:Lcom/google/firebase/messaging/ImageDownload;

    iget-object v1, p0, Lcom/google/firebase/messaging/-$$Lambda$ImageDownload$1Xn11wJGkQ0YswSUNQTBL7K7Rek;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/ImageDownload;->lambda$start$0$ImageDownload(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
