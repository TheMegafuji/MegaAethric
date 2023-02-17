.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/zzl;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

.field public final synthetic zzb:J

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Ljava/util/List;

.field public final synthetic zze:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-wide p2, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zzb:J

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zzc:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zzd:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-wide v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zzb:J

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zzc:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zzd:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/zzl;->zze:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zzf(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
