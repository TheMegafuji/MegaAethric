.class public final Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/OfferWalletObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/OfferWalletObject;

.field private zzb:Lcom/google/android/gms/wallet/wobs/zzb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/wallet/zzu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zza:Lcom/google/android/gms/wallet/OfferWalletObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzb()Lcom/google/android/gms/wallet/wobs/zzb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    return-void
.end method


# virtual methods
.method public addImageModuleDataMainImageUri(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zza(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addImageModuleDataMainImageUris(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzb(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addInfoModuleDataLabelValueRow(Lcom/google/android/gms/wallet/wobs/LabelValueRow;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzc(Lcom/google/android/gms/wallet/wobs/LabelValueRow;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addInfoModuleDataLabelValueRows(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzd(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addLinksModuleDataUri(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zze(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addLinksModuleDataUris(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzf(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzg(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addLocations(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzh(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addMessage(Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzi(Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addMessages(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addTextModuleData(Lcom/google/android/gms/wallet/wobs/TextModuleData;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzk(Lcom/google/android/gms/wallet/wobs/TextModuleData;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public addTextModulesData(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/OfferWalletObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zza:Lcom/google/android/gms/wallet/OfferWalletObject;

    iget-object v1, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzz()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzc:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zza:Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object v0
.end method

.method public setBarcodeAlternateText(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzm(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setBarcodeLabel(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzn(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setBarcodeType(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzo(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setBarcodeValue(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzp(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setClassId(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzq(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzr(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zza:Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/OfferWalletObject;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setInfoModuleDataHexBackgroundColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzs(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setInfoModuleDataHexFontColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzt(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setInfoModuleDataShowLastUpdateTime(Z)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzu(Z)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setIssuerName(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzv(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setRedemptionCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zza:Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setState(I)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzx(I)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzw(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method

.method public setValidTimeInterval(Lcom/google/android/gms/wallet/wobs/TimeInterval;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzb:Lcom/google/android/gms/wallet/wobs/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/zzb;->zzy(Lcom/google/android/gms/wallet/wobs/TimeInterval;)Lcom/google/android/gms/wallet/wobs/zzb;

    return-object p0
.end method
