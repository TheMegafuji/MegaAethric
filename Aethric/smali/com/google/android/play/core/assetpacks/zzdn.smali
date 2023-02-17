.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdn;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzdo;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzd:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdo;Ljava/util/List;Lcom/google/android/play/core/tasks/zzi;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzdn;->zzd:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/zzdo;->zzo(Ljava/util/List;Lcom/google/android/play/core/tasks/zzi;Ljava/util/List;)V

    return-void
.end method
