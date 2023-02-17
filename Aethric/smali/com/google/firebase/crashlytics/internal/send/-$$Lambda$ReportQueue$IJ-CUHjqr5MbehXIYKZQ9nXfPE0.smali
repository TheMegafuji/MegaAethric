.class public final synthetic Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/TransportScheduleCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;->f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;->f$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    return-void
.end method


# virtual methods
.method public final onSchedule(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;->f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$ReportQueue$IJ-CUHjqr5MbehXIYKZQ9nXfPE0;->f$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;->lambda$sendReport$1$ReportQueue(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;Ljava/lang/Exception;)V

    return-void
.end method
