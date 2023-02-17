.class public final Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;
.super Ljava/lang/Object;
.source "LogSourceMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;


# instance fields
.field private final log_event_dropped_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation
.end field

.field private final log_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_source_:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_event_dropped_:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getLogEventDroppedList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "logEventDropped"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_event_dropped_:Ljava/util/List;

    return-object v0
.end method

.method public getLogSource()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_source_:Ljava/lang/String;

    return-object v0
.end method
