.class public Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;
.super Landroid/app/Application;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private onCreateCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->onCreateCalled:Z

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->onCreateCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->onCreateCalled:Z

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/missingsplits/MissingSplitsManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/MissingSplitsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/missingsplits/MissingSplitsManager;->disableAppIfMissingRequiredSplits()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->onCreateCustom()V

    return-void

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The onCreate method must be invoked at most once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateCustom()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
