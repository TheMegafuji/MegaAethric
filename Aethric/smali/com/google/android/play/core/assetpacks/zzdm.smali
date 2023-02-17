.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdm;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzdo;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Lcom/google/android/play/core/assetpacks/zzbe;

.field public final synthetic zzd:Lcom/google/android/play/core/tasks/zzi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdo;Ljava/util/List;Lcom/google/android/play/core/assetpacks/zzbe;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zzc:Lcom/google/android/play/core/assetpacks/zzbe;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zzd:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zzc:Lcom/google/android/play/core/assetpacks/zzbe;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzdm;->zzd:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/zzdo;->zzm(Ljava/util/List;Lcom/google/android/play/core/assetpacks/zzbe;Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method
