.class public final synthetic Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$CDavwmIaUoxPoo5Upyr-1hcsJXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$ObjectParser;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$CDavwmIaUoxPoo5Upyr-1hcsJXE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$CDavwmIaUoxPoo5Upyr-1hcsJXE;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$CDavwmIaUoxPoo5Upyr-1hcsJXE;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$CDavwmIaUoxPoo5Upyr-1hcsJXE;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/-$$Lambda$CrashlyticsReportJsonTransform$CDavwmIaUoxPoo5Upyr-1hcsJXE;

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

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->lambda$CDavwmIaUoxPoo5Upyr-1hcsJXE(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    move-result-object p1

    return-object p1
.end method
