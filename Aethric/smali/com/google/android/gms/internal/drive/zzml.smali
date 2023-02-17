.class final Lcom/google/android/gms/internal/drive/zzml;
.super Lcom/google/android/gms/internal/drive/zzmr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzmr;"
    }
.end annotation


# instance fields
.field private final synthetic zzvk:Lcom/google/android/gms/internal/drive/zzmi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzmi;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzml;->zzvk:Lcom/google/android/gms/internal/drive/zzmi;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzmr;-><init>(Lcom/google/android/gms/internal/drive/zzmi;Lcom/google/android/gms/internal/drive/zzmj;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzmi;Lcom/google/android/gms/internal/drive/zzmj;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzml;-><init>(Lcom/google/android/gms/internal/drive/zzmi;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzml;->zzvk:Lcom/google/android/gms/internal/drive/zzmi;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzmk;-><init>(Lcom/google/android/gms/internal/drive/zzmi;Lcom/google/android/gms/internal/drive/zzmj;)V

    return-object v0
.end method
