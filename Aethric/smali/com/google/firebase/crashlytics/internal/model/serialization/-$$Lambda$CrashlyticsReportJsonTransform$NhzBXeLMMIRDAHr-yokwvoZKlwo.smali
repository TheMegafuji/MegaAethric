.class public final synthetic Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NhzBXeLMMIRDAHr-yokwvoZKlwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$ObjectParser;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NhzBXeLMMIRDAHr-yokwvoZKlwo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NhzBXeLMMIRDAHr-yokwvoZKlwo;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NhzBXeLMMIRDAHr-yokwvoZKlwo;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NhzBXeLMMIRDAHr-yokwvoZKlwo;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$NhzBXeLMMIRDAHr-yokwvoZKlwo;

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

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->lambda$NhzBXeLMMIRDAHr-yokwvoZKlwo(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    move-result-object p1

    return-object p1
.end method
