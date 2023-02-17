.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/zzm;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

.field public final synthetic zzb:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzm;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/zzm;->zzb:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzm;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzm;->zzb:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zzg(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
