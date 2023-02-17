.class public abstract Lcom/google/android/gms/internal/measurement/zzkc;
.super Lcom/google/android/gms/internal/measurement/zzkf;
.source "com.google.android.gms:play-services-measurement-base@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzln;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/measurement/zzjw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkf;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjw;->zza()Lcom/google/android/gms/internal/measurement/zzjw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzjw;

    return-void
.end method
