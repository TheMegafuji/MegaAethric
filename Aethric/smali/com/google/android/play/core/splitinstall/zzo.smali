.class public final enum Lcom/google/android/play/core/splitinstall/zzo;
.super Ljava/lang/Enum;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/zzg;


# static fields
.field public static final enum zza:Lcom/google/android/play/core/splitinstall/zzo;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final synthetic zzc:[Lcom/google/android/play/core/splitinstall/zzo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitinstall/zzo;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/splitinstall/zzo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zza:Lcom/google/android/play/core/splitinstall/zzo;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/play/core/splitinstall/zzo;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/play/core/splitinstall/zzo;->zzc:[Lcom/google/android/play/core/splitinstall/zzo;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/play/core/splitinstall/zzo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zzc:[Lcom/google/android/play/core/splitinstall/zzo;

    invoke-virtual {v0}, [Lcom/google/android/play/core/splitinstall/zzo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/play/core/splitinstall/zzo;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/splitinstall/zzh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/zzh;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/play/core/splitinstall/zzh;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
