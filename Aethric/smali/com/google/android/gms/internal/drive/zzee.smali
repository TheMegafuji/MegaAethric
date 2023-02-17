.class public final Lcom/google/android/gms/internal/drive/zzee;
.super Lcom/google/android/gms/internal/drive/zzet;


# static fields
.field private static final zzbz:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzda:I

.field private final zzgt:Lcom/google/android/gms/drive/events/zzi;

.field private final zzgu:Lcom/google/android/gms/internal/drive/zzeg;

.field private final zzgv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "EventCallback"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzee;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzet;-><init>()V

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgv:Ljava/util/List;

    const/4 p3, 0x1

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/drive/zzee;->zzda:I

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgt:Lcom/google/android/gms/drive/events/zzi;

    .line 5
    new-instance p3, Lcom/google/android/gms/internal/drive/zzeg;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/internal/drive/zzeg;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/drive/zzef;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgu:Lcom/google/android/gms/internal/drive/zzeg;

    return-void
.end method

.method static synthetic zzai()Lcom/google/android/gms/common/internal/GmsLogger;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/drive/zzee;->zzbz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/drive/zzfp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfp;->zzat()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object p1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzee;->zzda:I

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgv:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgu:Lcom/google/android/gms/internal/drive/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgt:Lcom/google/android/gms/drive/events/zzi;

    .line 14
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/drive/zzeg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzeg;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgv:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzg(I)Z
    .locals 1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzee;->zzgv:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
