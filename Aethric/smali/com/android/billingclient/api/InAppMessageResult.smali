.class public final Lcom/android/billingclient/api/InAppMessageResult;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@4.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/InAppMessageResult$InAppMessageResponseCode;
    }
.end annotation


# instance fields
.field private final mPurchaseToken:Ljava/lang/String;

.field private final mResponseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/billingclient/api/InAppMessageResult;->mResponseCode:I

    iput-object p2, p0, Lcom/android/billingclient/api/InAppMessageResult;->mPurchaseToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/InAppMessageResult;->mPurchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/InAppMessageResult;->mResponseCode:I

    return v0
.end method
