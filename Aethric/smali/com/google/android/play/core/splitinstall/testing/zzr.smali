.class public final Lcom/google/android/play/core/splitinstall/testing/zzr;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;

.field private final zzb:Lcom/google/android/play/core/internal/zzcs;

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;

.field private final zzd:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zzd:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zza:Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/splitinstall/zzad;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/zzad;->zzb()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitinstall/zzs;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/zzr;->zzd:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v3}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/google/android/play/core/splitinstall/zzs;Lcom/google/android/play/core/internal/zzco;)V

    return-object v4
.end method
