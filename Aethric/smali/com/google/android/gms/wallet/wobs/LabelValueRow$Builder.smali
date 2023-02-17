.class public final Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/wobs/LabelValueRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/wobs/LabelValueRow;Lcom/google/android/gms/wallet/wobs/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColumn(Lcom/google/android/gms/wallet/wobs/LabelValue;)Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;

    iget-object v0, v0, Lcom/google/android/gms/wallet/wobs/LabelValueRow;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addColumns(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/LabelValue;",
            ">;)",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;

    iget-object v0, v0, Lcom/google/android/gms/wallet/wobs/LabelValueRow;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/wobs/LabelValueRow;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;

    return-object v0
.end method

.method public setHexBackgroundColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LabelValueRow;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setHexFontColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LabelValueRow$Builder;->zza:Lcom/google/android/gms/wallet/wobs/LabelValueRow;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LabelValueRow;->zza:Ljava/lang/String;

    return-object p0
.end method
