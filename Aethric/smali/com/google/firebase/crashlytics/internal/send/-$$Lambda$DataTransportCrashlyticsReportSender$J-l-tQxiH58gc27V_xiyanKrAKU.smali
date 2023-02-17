.class public final synthetic Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$DataTransportCrashlyticsReportSender$J-l-tQxiH58gc27V_xiyanKrAKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$DataTransportCrashlyticsReportSender$J-l-tQxiH58gc27V_xiyanKrAKU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$DataTransportCrashlyticsReportSender$J-l-tQxiH58gc27V_xiyanKrAKU;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$DataTransportCrashlyticsReportSender$J-l-tQxiH58gc27V_xiyanKrAKU;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$DataTransportCrashlyticsReportSender$J-l-tQxiH58gc27V_xiyanKrAKU;->INSTANCE:Lcom/google/firebase/crashlytics/internal/send/-$$Lambda$DataTransportCrashlyticsReportSender$J-l-tQxiH58gc27V_xiyanKrAKU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->lambda$static$0(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B

    move-result-object p1

    return-object p1
.end method
