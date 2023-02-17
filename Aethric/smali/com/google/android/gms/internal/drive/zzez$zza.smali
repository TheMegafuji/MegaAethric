.class public final Lcom/google/android/gms/internal/drive/zzez$zza;
.super Lcom/google/android/gms/internal/drive/zzkk$zza;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "Lcom/google/android/gms/internal/drive/zzez;",
        "Lcom/google/android/gms/internal/drive/zzez$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzez;->zzak()Lcom/google/android/gms/internal/drive/zzez;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzfa;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzez$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(J)Lcom/google/android/gms/internal/drive/zzez$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzez$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->zza(Lcom/google/android/gms/internal/drive/zzez;J)V

    return-object p0
.end method

.method public final zzd(J)Lcom/google/android/gms/internal/drive/zzez$zza;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzez$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->zzb(Lcom/google/android/gms/internal/drive/zzez;J)V

    return-object p0
.end method

.method public final zze(J)Lcom/google/android/gms/internal/drive/zzez$zza;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzez$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->zzc(Lcom/google/android/gms/internal/drive/zzez;J)V

    return-object p0
.end method

.method public final zzk(I)Lcom/google/android/gms/internal/drive/zzez$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzez$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast p1, Lcom/google/android/gms/internal/drive/zzez;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzez;->zza(Lcom/google/android/gms/internal/drive/zzez;I)V

    return-object p0
.end method
