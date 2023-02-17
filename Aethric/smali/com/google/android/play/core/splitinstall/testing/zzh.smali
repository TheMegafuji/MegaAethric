.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/zzh;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/testing/zzp;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzh;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 11

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzh;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    sget v1, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zza:I

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->hasTerminalStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 v0, -0x1

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result p1

    add-int/2addr v1, p1

    move v2, v1

    .line 3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 4
    invoke-static/range {v2 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->create(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p1

    return-object p1
.end method
