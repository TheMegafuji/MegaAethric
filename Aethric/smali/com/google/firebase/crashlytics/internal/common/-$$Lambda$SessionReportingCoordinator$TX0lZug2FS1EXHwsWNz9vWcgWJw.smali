.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;->INSTANCE:Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    check-cast p2, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->lambda$getSortedCustomAttributes$0(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;)I

    move-result p1

    return p1
.end method
