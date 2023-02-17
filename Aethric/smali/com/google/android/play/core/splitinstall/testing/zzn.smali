.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/zzn;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzn;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/zzn;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/zzn;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzn;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzn;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zzn;->zzc:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zzi(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
