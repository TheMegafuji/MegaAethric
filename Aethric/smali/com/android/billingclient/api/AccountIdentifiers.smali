.class public final Lcom/android/billingclient/api/AccountIdentifiers;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@4.1.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObfuscatedAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedProfileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zzb:Ljava/lang/String;

    return-object v0
.end method
