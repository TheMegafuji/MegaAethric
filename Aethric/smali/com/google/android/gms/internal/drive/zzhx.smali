.class public final Lcom/google/android/gms/internal/drive/zzhx;
.super Lcom/google/android/gms/drive/metadata/internal/zzt;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableMetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzt;",
        "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string p1, "mimeType"

    const v0, 0x3e8fa0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/metadata/internal/zzt;-><init>(Ljava/lang/String;I)V

    return-void
.end method
