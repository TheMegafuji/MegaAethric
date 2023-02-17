.class final Lcom/google/android/gms/internal/drive/zzhu;
.super Lcom/google/android/gms/drive/metadata/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzm<",
        "Lcom/google/android/gms/common/data/BitmapTeleporter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
    .locals 0

    const p4, 0x432380

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/metadata/internal/zzm;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Thumbnail field is write only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
