.class public final synthetic Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$QraSHbFLumYlHJ5l17BMFa-fMsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$QraSHbFLumYlHJ5l17BMFa-fMsY;->f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$QraSHbFLumYlHJ5l17BMFa-fMsY;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$QraSHbFLumYlHJ5l17BMFa-fMsY;->f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$QraSHbFLumYlHJ5l17BMFa-fMsY;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;->lambda$flushScheduledReportsIfAble$0$ReportQueue(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
