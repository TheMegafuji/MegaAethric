.class public final Lcom/google/android/play/core/appupdate/zzt;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzt;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzt;->zza:Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzj;->zzb()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/appupdate/zzs;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/appupdate/zzs;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
