.class public Lcom/google/android/gms/internal/drive/zzkk$zza;
.super Lcom/google/android/gms/internal/drive/zziu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/drive/zziu<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzrt:Lcom/google/android/gms/internal/drive/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzru:Lcom/google/android/gms/internal/drive/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzrv:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/drive/zzkk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrt:Lcom/google/android/gms/internal/drive/zzkk;

    .line 3
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsa:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrv:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrt:Lcom/google/android/gms/internal/drive/zzkk;

    .line 47
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 48
    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsb:I

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzde()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/drive/zzkk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zza(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(Lcom/google/android/gms/internal/drive/zzkk;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/drive/zzit;)Lcom/google/android/gms/internal/drive/zziu;
    .locals 0

    .line 35
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zza(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdb()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zza(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-object p0
.end method

.method public final synthetic zzbn()Lcom/google/android/gms/internal/drive/zziu;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method public final synthetic zzda()Lcom/google/android/gms/internal/drive/zzlq;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrt:Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0
.end method

.method protected final zzdb()V
    .locals 3

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrv:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsa:I

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zza(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrv:Z

    :cond_0
    return-void
.end method

.method public zzdc()Lcom/google/android/gms/internal/drive/zzkk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrv:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->zzbp()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzrv:Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzru:Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0
.end method

.method public final zzdd()Lcom/google/android/gms/internal/drive/zzkk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzde()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/drive/zzmw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/drive/zzmw;-><init>(Lcom/google/android/gms/internal/drive/zzlq;)V

    .line 28
    throw v1
.end method

.method public synthetic zzde()Lcom/google/android/gms/internal/drive/zzlq;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdc()Lcom/google/android/gms/internal/drive/zzkk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzdf()Lcom/google/android/gms/internal/drive/zzlq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdd()Lcom/google/android/gms/internal/drive/zzkk;

    move-result-object v0

    return-object v0
.end method
