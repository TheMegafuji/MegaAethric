.class public final synthetic Lcom/google/firebase/crashlytics/-$$Lambda$AnalyticsDeferredProxy$1RYJBD5bXWtJsWZhT0xTWH8lCIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/-$$Lambda$AnalyticsDeferredProxy$1RYJBD5bXWtJsWZhT0xTWH8lCIs;->f$0:Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;

    return-void
.end method


# virtual methods
.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/-$$Lambda$AnalyticsDeferredProxy$1RYJBD5bXWtJsWZhT0xTWH8lCIs;->f$0:Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;->lambda$getAnalyticsEventLogger$1$AnalyticsDeferredProxy(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
