.class public final synthetic Lcom/google/android/gms/internal/auth/zzce;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzck;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/auth/zzcg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzce;->zza:Lcom/google/android/gms/internal/auth/zzcg;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzce;->zza:Lcom/google/android/gms/internal/auth/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcg;->zzc()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
