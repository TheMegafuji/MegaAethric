.class final Lcom/google/android/gms/internal/drive/zzmm;
.super Ljava/lang/Object;


# static fields
.field private static final zzvl:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzvm:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzmn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzmm;->zzvl:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzmo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzmm;->zzvm:Ljava/lang/Iterable;

    return-void
.end method

.method static zzex()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzmm;->zzvm:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic zzey()Ljava/util/Iterator;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/drive/zzmm;->zzvl:Ljava/util/Iterator;

    return-object v0
.end method
