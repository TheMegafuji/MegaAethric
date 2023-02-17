.class public abstract Lcom/google/android/gms/internal/auth/zzet;
.super Lcom/google/android/gms/internal/auth/zzeu;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfx;


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/auth/zzep;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzeu;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzep;->zza()Lcom/google/android/gms/internal/auth/zzep;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->zzb:Lcom/google/android/gms/internal/auth/zzep;

    return-void
.end method
