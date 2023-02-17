.class public final Lcom/google/android/gms/internal/drive/zzfd$zza;
.super Lcom/google/android/gms/internal/drive/zzkk$zza;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "Lcom/google/android/gms/internal/drive/zzfd;",
        "Lcom/google/android/gms/internal/drive/zzfd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfd;->zzaq()Lcom/google/android/gms/internal/drive/zzfd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzfe;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzfd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(J)Lcom/google/android/gms/internal/drive/zzfd$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfd$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfd;->zza(Lcom/google/android/gms/internal/drive/zzfd;J)V

    return-object p0
.end method

.method public final zzj(J)Lcom/google/android/gms/internal/drive/zzfd$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfd$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfd;->zzb(Lcom/google/android/gms/internal/drive/zzfd;J)V

    return-object p0
.end method
