.class public final synthetic Lcom/google/android/gms/internal/auth/zzct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzdj;


# instance fields
.field public final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzct;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzct;->zza:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/auth/zzdc;->zzd:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzcp;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzdh;

    move-result-object v0

    return-object v0
.end method
