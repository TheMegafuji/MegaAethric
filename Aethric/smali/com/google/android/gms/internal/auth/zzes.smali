.class public Lcom/google/android/gms/internal/auth/zzes;
.super Lcom/google/android/gms/internal/auth/zzdo;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzeu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzes<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/zzdo<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/auth/zzeu;

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/auth/zzeu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/auth/zzeu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzes;->zzc:Lcom/google/android/gms/internal/auth/zzeu;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/auth/zzes;->zzb:Z

    return-void
.end method

.method private static final zzj(Lcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzeu;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzge;->zza()Lcom/google/android/gms/internal/auth/zzge;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzge;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgh;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzgh;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzes;->zzd()Lcom/google/android/gms/internal/auth/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/auth/zzdo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzes;->zzd()Lcom/google/android/gms/internal/auth/zzes;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/internal/auth/zzdp;)Lcom/google/android/gms/internal/auth/zzdo;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzes;->zze(Lcom/google/android/gms/internal/auth/zzeu;)Lcom/google/android/gms/internal/auth/zzes;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/auth/zzes;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zzc:Lcom/google/android/gms/internal/auth/zzeu;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzes;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzes;->zzf()Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzes;->zze(Lcom/google/android/gms/internal/auth/zzeu;)Lcom/google/android/gms/internal/auth/zzes;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/auth/zzeu;)Lcom/google/android/gms/internal/auth/zzes;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzes;->zzi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth/zzes;->zzj(Lcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzeu;)V

    return-object p0
.end method

.method public zzf()Lcom/google/android/gms/internal/auth/zzeu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzge;->zza()Lcom/google/android/gms/internal/auth/zzge;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzge;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgh;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/auth/zzgh;->zze(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    return-object v0
.end method

.method public bridge synthetic zzg()Lcom/google/android/gms/internal/auth/zzfw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzes;->zzf()Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/auth/zzfw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zzc:Lcom/google/android/gms/internal/auth/zzeu;

    return-object v0
.end method

.method protected zzi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/zzes;->zzj(Lcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzeu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzes;->zza:Lcom/google/android/gms/internal/auth/zzeu;

    return-void
.end method
