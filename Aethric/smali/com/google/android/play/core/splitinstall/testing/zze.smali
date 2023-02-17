.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/zze;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Ljava/util/List;

.field public final synthetic zze:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zzd:Ljava/util/List;

    iput-wide p5, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zze:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zza:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zzd:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/android/play/core/splitinstall/testing/zze;->zze:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zzh(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method
