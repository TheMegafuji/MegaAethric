.class public final Lcom/google/android/gms/drive/metadata/internal/zzh;
.super Lcom/google/android/gms/drive/metadata/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/zza<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const p2, 0x419ce0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 1

    .line 6
    check-cast p2, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected final synthetic zzb(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
