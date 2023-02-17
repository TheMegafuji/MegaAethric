.class public abstract Lcom/android/billingclient/api/BillingClient;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@4.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingClient$Builder;,
        Lcom/android/billingclient/api/BillingClient$ConnectionState;,
        Lcom/android/billingclient/api/BillingClient$BillingResponseCode;,
        Lcom/android/billingclient/api/BillingClient$FeatureType;,
        Lcom/android/billingclient/api/BillingClient$SkuType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/BillingClient$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/zzj;)V

    return-object v0
.end method


# virtual methods
.method public abstract acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
.end method

.method public abstract consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
.end method

.method public abstract endConnection()V
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract isReady()Z
.end method

.method public abstract launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V
.end method

.method public abstract queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
.end method

.method public abstract queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
.end method

.method public abstract querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
.end method

.method public abstract showInAppMessages(Landroid/app/Activity;Lcom/android/billingclient/api/InAppMessageParams;Lcom/android/billingclient/api/InAppMessageResponseListener;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
.end method
