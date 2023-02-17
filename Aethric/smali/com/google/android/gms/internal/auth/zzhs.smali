.class public final Lcom/google/android/gms/internal/auth/zzhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzdj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzhs;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/auth/zzdj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zza:Lcom/google/android/gms/internal/auth/zzhs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhv;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzdn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzdn;->zza(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzdj;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/auth/zzhr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zza:Lcom/google/android/gms/internal/auth/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhs;->zzc()Lcom/google/android/gms/internal/auth/zzht;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzht;->zza()Lcom/google/android/gms/internal/auth/zzhr;

    move-result-object v0

    return-object v0
.end method

.method public static zzd()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zza:Lcom/google/android/gms/internal/auth/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhs;->zzc()Lcom/google/android/gms/internal/auth/zzht;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzht;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zza:Lcom/google/android/gms/internal/auth/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhs;->zzc()Lcom/google/android/gms/internal/auth/zzht;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzht;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzhs;->zzc()Lcom/google/android/gms/internal/auth/zzht;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/auth/zzht;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzht;

    return-object v0
.end method
