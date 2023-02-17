.class Lcom/avalon/rpg/Index$9;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/avalon/rpg/Index$9;->this$0:Lcom/avalon/rpg/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 499
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 500
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 501
    new-instance v0, Lcom/avalon/rpg/Index$9$1;

    invoke-direct {v0, p0}, Lcom/avalon/rpg/Index$9$1;-><init>(Lcom/avalon/rpg/Index$9;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
