.class public final synthetic Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NcslUolmMJ2rhykSKHnzkuM2hYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$ObjectParser;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NcslUolmMJ2rhykSKHnzkuM2hYY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NcslUolmMJ2rhykSKHnzkuM2hYY;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NcslUolmMJ2rhykSKHnzkuM2hYY;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NcslUolmMJ2rhykSKHnzkuM2hYY;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NcslUolmMJ2rhykSKHnzkuM2hYY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->lambda$NcslUolmMJ2rhykSKHnzkuM2hYY(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    move-result-object p1

    return-object p1
.end method
